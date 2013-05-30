.class Lcom/miui/osb/ThreadedStreamHandler;
.super Ljava/lang/Thread;
.source "ThreadedStreamHandler.java"


# instance fields
.field adminPassword:Ljava/lang/String;

.field inputStream:Ljava/io/InputStream;

.field outputBuffer:Ljava/lang/StringBuilder;

.field outputStream:Ljava/io/OutputStream;

.field printWriter:Ljava/io/PrintWriter;

.field private sudoIsRequested:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "inputStream"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/osb/ThreadedStreamHandler;->outputBuffer:Ljava/lang/StringBuilder;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/osb/ThreadedStreamHandler;->sudoIsRequested:Z

    .line 22
    iput-object p1, p0, Lcom/miui/osb/ThreadedStreamHandler;->inputStream:Ljava/io/InputStream;

    .line 23
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "inputStream"
    .parameter "outputStream"
    .parameter "adminPassword"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/osb/ThreadedStreamHandler;->outputBuffer:Ljava/lang/StringBuilder;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/osb/ThreadedStreamHandler;->sudoIsRequested:Z

    .line 39
    iput-object p1, p0, Lcom/miui/osb/ThreadedStreamHandler;->inputStream:Ljava/io/InputStream;

    .line 40
    iput-object p2, p0, Lcom/miui/osb/ThreadedStreamHandler;->outputStream:Ljava/io/OutputStream;

    .line 41
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/miui/osb/ThreadedStreamHandler;->printWriter:Ljava/io/PrintWriter;

    .line 42
    iput-object p3, p0, Lcom/miui/osb/ThreadedStreamHandler;->adminPassword:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/osb/ThreadedStreamHandler;->sudoIsRequested:Z

    .line 44
    return-void
.end method

.method private doSleep(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 82
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getOutputBuffer()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/osb/ThreadedStreamHandler;->outputBuffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 50
    iget-boolean v5, p0, Lcom/miui/osb/ThreadedStreamHandler;->sudoIsRequested:Z

    if-eqz v5, :cond_0

    .line 52
    iget-object v5, p0, Lcom/miui/osb/ThreadedStreamHandler;->printWriter:Ljava/io/PrintWriter;

    iget-object v6, p0, Lcom/miui/osb/ThreadedStreamHandler;->adminPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    iget-object v5, p0, Lcom/miui/osb/ThreadedStreamHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 58
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 59
    iget-object v6, p0, Lcom/miui/osb/ThreadedStreamHandler;->inputStream:Ljava/io/InputStream;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 58
    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 61
    .local v3, line:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v3

    if-nez v3, :cond_1

    .line 72
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v1

    .line 77
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    :goto_1
    return-void

    .line 62
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/miui/osb/ThreadedStreamHandler;->outputBuffer:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 66
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    .local v2, ioe:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 73
    :catch_1
    move-exception v5

    goto :goto_1

    .line 67
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 69
    .local v4, t:Ljava/lang/Throwable;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 73
    :catch_3
    move-exception v5

    goto :goto_1

    .line 70
    .end local v4           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 72
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 76
    :goto_5
    throw v5

    .line 73
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catch_4
    move-exception v5

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_1

    .end local v3           #line:Ljava/lang/String;
    :catch_5
    move-exception v6

    goto :goto_5

    .line 70
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 67
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v4

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 64
    .end local v3           #line:Ljava/lang/String;
    :catch_7
    move-exception v2

    goto :goto_2
.end method
