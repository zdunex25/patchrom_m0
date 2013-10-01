.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 512
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 516
    const/4 v7, 0x0

    .line 519
    .local v7, retryCount:I
    :goto_0
    const/4 v8, 0x0

    .line 523
    .local v8, s:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 524
    .end local v8           #s:Landroid/net/LocalSocket;
    .local v9, s:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string v12, "rild"

    sget-object v13, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v12, v13}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 526
    .local v4, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 559
    const/4 v7, 0x0

    .line 561
    :try_start_2
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v9, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 562
    const-string v12, "RILJ"

    const-string v13, "Connected to \'rild\' socket"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v13, "qcomdsds"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/RIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 566
    const-string v10, "SUB1"

    .line 567
    .local v10, str:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 569
    .local v0, data:[B
    :try_start_3
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V

    .line 570
    const-string v12, "RILJ"

    const-string v13, "Data sent!!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 578
    .end local v0           #data:[B
    .end local v10           #str:Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .line 580
    .local v5, length:I
    :try_start_4
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 585
    .local v3, is:Ljava/io/InputStream;
    :goto_2
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v3, v12}, Lcom/android/internal/telephony/RIL;->access$100(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    move-result v5

    .line 587
    if-gez v5, :cond_4

    .line 609
    .end local v3           #is:Ljava/io/InputStream;
    :goto_3
    :try_start_5
    const-string v12, "RILJ"

    const-string v13, "Disconnected from \'rild\' socket"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 615
    :try_start_6
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 619
    :goto_4
    :try_start_7
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 620
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 623
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/RIL;->clearRequestsList(IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 624
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    :catch_0
    move-exception v11

    move-object v8, v9

    .line 625
    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v8       #s:Landroid/net/LocalSocket;
    .local v11, tr:Ljava/lang/Throwable;
    :goto_5
    const-string v12, "RILJ"

    const-string v13, "Uncaught exception"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    .line 630
    return-void

    .line 527
    .end local v11           #tr:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 529
    .local v1, ex:Ljava/io/IOException;
    :goto_6
    if-eqz v8, :cond_1

    .line 530
    :try_start_8
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 539
    :cond_1
    :goto_7
    const/16 v12, 0x8

    if-ne v7, v12, :cond_3

    .line 540
    :try_start_9
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t find \'rild\' socket after "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " times, continuing to retry silently"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 551
    :cond_2
    :goto_8
    const-wide/16 v12, 0xfa0

    :try_start_a
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 555
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 556
    goto/16 :goto_0

    .line 544
    :cond_3
    if-lez v7, :cond_2

    const/16 v12, 0x8

    if-ge v7, v12, :cond_2

    .line 545
    :try_start_b
    const-string v12, "RILJ"

    const-string v13, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_8

    .line 624
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v11

    goto :goto_5

    .line 571
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v0       #data:[B
    .restart local v4       #l:Landroid/net/LocalSocketAddress;
    .restart local v9       #s:Landroid/net/LocalSocket;
    .restart local v10       #str:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 572
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_c
    const-string v12, "RILJ"

    const-string v13, "IOException"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 573
    .end local v1           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 574
    .local v2, exc:Ljava/lang/RuntimeException;
    const-string v12, "RILJ"

    const-string v13, "Uncaught exception "

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1

    .line 592
    .end local v0           #data:[B
    .end local v2           #exc:Ljava/lang/RuntimeException;
    .end local v10           #str:Ljava/lang/String;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #length:I
    :cond_4
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 593
    .local v6, p:Landroid/os/Parcel;
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 594
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 598
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v12, v6}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V

    .line 599
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_2

    .line 601
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #p:Landroid/os/Parcel;
    :catch_5
    move-exception v1

    .line 602
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_e
    const-string v12, "RILJ"

    const-string v13, "\'rild\' socket closed"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 604
    .end local v1           #ex:Ljava/io/IOException;
    :catch_6
    move-exception v11

    .line 605
    .restart local v11       #tr:Ljava/lang/Throwable;
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uncaught exception read length="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_3

    .line 532
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    .end local v9           #s:Landroid/net/LocalSocket;
    .end local v11           #tr:Ljava/lang/Throwable;
    .restart local v1       #ex:Ljava/io/IOException;
    .restart local v8       #s:Landroid/net/LocalSocket;
    :catch_7
    move-exception v12

    goto/16 :goto_7

    .line 552
    :catch_8
    move-exception v12

    goto :goto_9

    .line 616
    .end local v1           #ex:Ljava/io/IOException;
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v4       #l:Landroid/net/LocalSocketAddress;
    .restart local v5       #length:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catch_9
    move-exception v12

    goto/16 :goto_4

    .line 527
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    :catch_a
    move-exception v1

    move-object v8, v9

    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v8       #s:Landroid/net/LocalSocket;
    goto/16 :goto_6
.end method
