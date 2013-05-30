.class public Lcom/sec/android/app/fm/data/ChannelStore;
.super Ljava/lang/Object;
.source "ChannelStore.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/data/ChannelStore;


# instance fields
.field private mInputStream:Ljava/io/ObjectInputStream;

.field private mOutputStream:Ljava/io/ObjectOutputStream;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/fm/data/ChannelStore;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/sec/android/app/fm/data/ChannelStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/data/ChannelStore;->_instance:Lcom/sec/android/app/fm/data/ChannelStore;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/sec/android/app/fm/data/ChannelStore;

    invoke-direct {v0}, Lcom/sec/android/app/fm/data/ChannelStore;-><init>()V

    sput-object v0, Lcom/sec/android/app/fm/data/ChannelStore;->_instance:Lcom/sec/android/app/fm/data/ChannelStore;

    .line 37
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/data/ChannelStore;->_instance:Lcom/sec/android/app/fm/data/ChannelStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public load()V
    .locals 4

    .prologue
    .line 80
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "ChannelStorage"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    .line 82
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    .line 84
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaded Channel List :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 86
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 87
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 98
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    goto :goto_0

    .line 88
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 92
    :goto_1
    :try_start_4
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v1, :cond_2

    .line 93
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "Creating new list"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 100
    :catch_3
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 103
    :catch_4
    move-exception v1

    goto :goto_0

    .line 97
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 98
    :try_start_7
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 104
    :cond_3
    :goto_2
    throw v1

    .line 100
    :catch_5
    move-exception v0

    .line 102
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_2

    .line 103
    :catch_6
    move-exception v2

    goto :goto_2

    .line 91
    .local v0, e:Ljava/lang/Exception;
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public store()V
    .locals 5

    .prologue
    .line 44
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ChannelStorage"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    .line 55
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 56
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 68
    :catch_1
    move-exception v1

    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 63
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 65
    :catch_3
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 68
    :catch_4
    move-exception v1

    goto :goto_0

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 63
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 69
    :cond_2
    :goto_2
    throw v1

    .line 65
    :catch_5
    move-exception v0

    .line 67
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 68
    :catch_6
    move-exception v2

    goto :goto_2

    .line 60
    .local v0, e:Ljava/lang/Exception;
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 124
    return-void
.end method
