.class Landroid/webkit/HTML5WebSocket$WebSocket;
.super Ljava/lang/Object;
.source "HTML5WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebSocket"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String; = "WebSocket"


# instance fields
.field private mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

.field private mHost:Ljava/lang/String;

.field private mIsSecure:Z

.field private mPort:I

.field private mReadBuffer:Ljava/nio/ByteBuffer;

.field private mRunning:Z

.field private mSelector:Ljava/nio/channels/Selector;

.field private mSocketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5WebSocket;)V
    .locals 2
    .parameter "webSocket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mRunning:Z

    .line 123
    iput-boolean v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mIsSecure:Z

    .line 130
    iput-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mHost:Ljava/lang/String;

    .line 131
    const/16 v0, 0x50

    iput v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mPort:I

    .line 133
    iput-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 137
    iput-object p1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    .line 139
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;

    .line 140
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;

    .line 141
    return-void
.end method

.method private closeImpl()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/HTML5WebSocket$WebSocket;->setSocketRunning(Z)V

    .line 410
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v0}, Landroid/webkit/HTML5WebSocket;->onClosed()V

    .line 412
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 415
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 418
    :cond_1
    return-void
.end method

.method private handleConnectable(Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 325
    :cond_0
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 327
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v0}, Landroid/webkit/HTML5WebSocket;->onConnected()V

    .line 328
    return-void
.end method

.method private handleReadable(Ljava/nio/channels/SelectionKey;)V
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 350
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->readImpl()I

    move-result v0

    .line 352
    .local v0, count:I
    if-gez v0, :cond_0

    .line 353
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v2}, Landroid/webkit/HTML5WebSocket;->onMessage()V

    .line 354
    invoke-direct {p0, p1}, Landroid/webkit/HTML5WebSocket$WebSocket;->handleWritable(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v0           #count:I
    :cond_0
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, ex:Ljava/io/IOException;
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v2, v1}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    .line 358
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_0
.end method

.method private handleRunnable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketRunning()Z

    move-result v4

    if-nez v4, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v4, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->select()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    iget-object v4, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    .line 296
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 298
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 300
    .local v2, key:Ljava/nio/channels/SelectionKey;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 302
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 305
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 306
    invoke-direct {p0, v2}, Landroid/webkit/HTML5WebSocket$WebSocket;->handleConnectable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 287
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v2           #key:Ljava/nio/channels/SelectionKey;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/io/IOException;
    goto :goto_0

    .line 289
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 290
    .local v0, e:Ljava/nio/channels/ClosedSelectorException;
    goto :goto_0

    .line 291
    .end local v0           #e:Ljava/nio/channels/ClosedSelectorException;
    :catch_2
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 309
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v2       #key:Ljava/nio/channels/SelectionKey;
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_3
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 310
    invoke-direct {p0, v2}, Landroid/webkit/HTML5WebSocket$WebSocket;->handleWritable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 313
    :cond_4
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 314
    invoke-direct {p0, v2}, Landroid/webkit/HTML5WebSocket$WebSocket;->handleReadable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1
.end method

.method private handleWritable(Ljava/nio/channels/SelectionKey;)V
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, count:I
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->getWriteQueueData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 335
    .local v1, data:Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    .line 336
    invoke-direct {p0, v1}, Landroid/webkit/HTML5WebSocket$WebSocket;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 339
    :cond_0
    if-lez v0, :cond_1

    .line 340
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    invoke-virtual {p1, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v1           #data:Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v2

    .line 343
    .local v2, ex:Ljava/io/IOException;
    iget-object v3, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v3, v2}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    .line 344
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_0
.end method

.method private declared-synchronized isSocketConnected()Z
    .locals 1

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 256
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isSocketRunning()Z
    .locals 1

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x1

    .line 263
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readImpl()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v1, -0x1

    .line 381
    .local v1, plainDataCount:I
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 405
    :goto_0
    return v1

    .line 385
    :cond_1
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 386
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 388
    if-gtz v1, :cond_2

    .line 389
    const/4 v1, -0x1

    .line 390
    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 393
    .local v0, chunk:Ljava/nio/ByteBuffer;
    const/16 v2, 0x1000

    if-ge v1, v2, :cond_3

    .line 395
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_3

    .line 397
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 401
    :cond_3
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5WebSocket$WebSocket;->putReadQueueData(Ljava/nio/ByteBuffer;)V

    .line 403
    if-gtz v1, :cond_0

    goto :goto_0
.end method

.method private declared-synchronized setSocketRunning(Z)V
    .locals 1
    .parameter "running"

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, -0x1

    .line 364
    .local v0, plainDataCount:I
    if-nez p1, :cond_1

    move v1, v0

    .line 375
    .end local v0           #plainDataCount:I
    .local v1, plainDataCount:I
    :goto_0
    return v1

    .line 372
    .end local v1           #plainDataCount:I
    .restart local v0       #plainDataCount:I
    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 368
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketRunning()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v1, v0

    .line 375
    .end local v0           #plainDataCount:I
    .restart local v1       #plainDataCount:I
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 188
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->closeImpl()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public connect(Ljava/net/URI;)Ljava/lang/Thread;
    .locals 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mHost:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    iput v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mPort:I

    .line 148
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v5, "https"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mIsSecure:Z

    .line 150
    invoke-direct {p0, v3}, Landroid/webkit/HTML5WebSocket$WebSocket;->setSocketRunning(Z)V

    .line 151
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    .line 152
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 153
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mHost:Ljava/lang/String;

    iget v6, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mPort:I

    invoke-direct {v3, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 155
    const-string v2, "java.net.preferIPv4Stack"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    const-string v2, "java.net.preferIPv6Addresses"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    .line 159
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 161
    iget-boolean v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mIsSecure:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mHost:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 163
    :cond_0
    invoke-direct {p0, v4}, Landroid/webkit/HTML5WebSocket$WebSocket;->setSocketRunning(Z)V

    .line 164
    const/4 v0, 0x0

    .local v0, th:Ljava/lang/Thread;
    move-object v1, v0

    .line 169
    .end local v0           #th:Ljava/lang/Thread;
    .local v1, th:Ljava/lang/Thread;
    :goto_1
    return-object v1

    .end local v1           #th:Ljava/lang/Thread;
    :cond_1
    move v2, v4

    .line 148
    goto :goto_0

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 168
    .restart local v0       #th:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move-object v1, v0

    .line 169
    .end local v0           #th:Ljava/lang/Thread;
    .restart local v1       #th:Ljava/lang/Thread;
    goto :goto_1
.end method

.method public getReadData()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, sendData:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 209
    .local v1, readData:Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->getReadQueueData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 210
    if-nez v1, :cond_2

    .line 227
    :cond_1
    :goto_0
    return-object v2

    .line 213
    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 215
    .local v0, chunk:Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_3

    .line 216
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 217
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 219
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 220
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 221
    move-object v2, v0

    .line 223
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/16 v5, 0x2000

    if-gt v3, v5, :cond_1

    .line 226
    if-nez v1, :cond_0

    goto :goto_0

    .end local v0           #chunk:Ljava/nio/ByteBuffer;
    :cond_4
    move v3, v4

    .line 213
    goto :goto_1
.end method

.method public declared-synchronized getReadQueueData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteQueueData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSocketSecure()Z
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mIsSecure:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putReadQueueData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 243
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putWriteQueueData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 249
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 174
    :goto_0
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->handleRunnable()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v1, v0}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 179
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v1, v0}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public send()V
    .locals 4

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/nio/channels/ClosedChannelException;
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v1, v0}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
