.class public Lcom/sec/android/app/fm/TestMode;
.super Ljava/lang/Object;
.source "TestMode.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/TestMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/fm/TestMode;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/sec/android/app/fm/TestMode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/sec/android/app/fm/TestMode;

    invoke-direct {v0}, Lcom/sec/android/app/fm/TestMode;-><init>()V

    sput-object v0, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;

    .line 40
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 47
    const-string v11, "TestMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "action  : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v11, "test.mode.radio.on.freq"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 53
    const-string v11, "frequency"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, freq:Ljava/lang/String;
    const-string v11, "output"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, output:Ljava/lang/String;
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/media/fmradio/FMPlayer;->on(Z)Z

    .line 58
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    .line 60
    .local v8, volume:I
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 63
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 64
    :cond_1
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_RADIO_ON_FREQ 3"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v12, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v12, v12, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v12}, Lcom/samsung/media/fmradio/FMPlayer;->isHeadsetPlugged()Z

    move-result v12

    if-nez v12, :cond_4

    :goto_0
    invoke-virtual {v11, v9}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 66
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_RADIO_ON_FREQ 4"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 78
    .local v7, val:I
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TEST_MODE_RADIO_ON_FREQ - freq:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", val:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 79
    const-string v9, "TestMode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TEST_MODE_RADIO_ON_FREQ 9, val : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    int-to-long v10, v7

    invoke-virtual {v9, v10, v11}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 81
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_RADIO_ON_FREQ 10"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v3           #freq:Ljava/lang/String;
    .end local v5           #output:Ljava/lang/String;
    .end local v7           #val:I
    .end local v8           #volume:I
    :cond_3
    :goto_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "going for finish"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/fm/MainActivity;->finish()V

    .line 144
    :goto_3
    return-void

    .restart local v3       #freq:Ljava/lang/String;
    .restart local v5       #output:Ljava/lang/String;
    .restart local v8       #volume:I
    :cond_4
    move v9, v10

    .line 65
    goto :goto_0

    .line 67
    :cond_5
    :try_start_1
    const-string v9, "speaker"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 68
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_RADIO_ON_FREQ 5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 70
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_RADIO_ON_FREQ 6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 135
    .end local v3           #freq:Ljava/lang/String;
    .end local v5           #output:Ljava/lang/String;
    .end local v8           #volume:I
    :catch_0
    move-exception v2

    .line 137
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    :goto_5
    :try_start_3
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v9, v2}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "going for finish"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/fm/MainActivity;->finish()V

    goto :goto_3

    .line 71
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #freq:Ljava/lang/String;
    .restart local v5       #output:Ljava/lang/String;
    .restart local v8       #volume:I
    :cond_6
    :try_start_4
    const-string v9, "earphone"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 72
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_RADIO_ON_FREQ 7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 74
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_RADIO_ON_FREQ 8"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 141
    .end local v3           #freq:Ljava/lang/String;
    .end local v5           #output:Ljava/lang/String;
    .end local v8           #volume:I
    :catchall_0
    move-exception v9

    :goto_6
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "going for finish"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v10, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/fm/MainActivity;->finish()V

    throw v9

    .line 83
    :cond_7
    :try_start_5
    const-string v11, "test.mode.radio.off"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 85
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_RADIO_OFF 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v9}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z

    .line 87
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_RADIO_OFF 2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 88
    :cond_8
    const-string v11, "output"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 90
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_OUTPUT 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v11, "output"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .restart local v5       #output:Ljava/lang/String;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 93
    :cond_9
    const-string v11, "TestMode"

    const-string v12, "TEST_MODE_OUTPUT 2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v11, v11, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v12, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v12, v12, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v12}, Lcom/samsung/media/fmradio/FMPlayer;->isHeadsetPlugged()Z

    move-result v12

    if-nez v12, :cond_a

    :goto_7
    invoke-virtual {v11, v9}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 95
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_OUTPUT 3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    move v9, v10

    .line 94
    goto :goto_7

    .line 96
    :cond_b
    const-string v9, "speaker"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 97
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_OUTPUT 4"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 99
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_OUTPUT 5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 101
    :cond_c
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_OUTPUT 6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 103
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_OUTPUT 7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 106
    .end local v5           #output:Ljava/lang/String;
    :cond_d
    const-string v9, "test.mode.radio.freq"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 108
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_SET_FREQ 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v9, "frequency"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .restart local v3       #freq:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 112
    .restart local v7       #val:I
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_SET_FREQ 2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/media/fmradio/FMPlayer;->on(Z)Z

    .line 114
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_SET_FREQ 3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    .line 116
    .restart local v8       #volume:I
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v8, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 118
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_SET_FREQ 4"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    int-to-long v10, v7

    invoke-virtual {v9, v10, v11}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 120
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_SET_FREQ 5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v10, v10, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v10}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentRSSI()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, rssi:Ljava/lang/String;
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_SET_FREQ 6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Landroid/content/Intent;

    const-string v9, "test.mode.radio.freq.response"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, bintent:Landroid/content/Intent;
    const-string v9, "frequency"

    invoke-virtual {v1, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v9, "signal_strength"

    invoke-virtual {v1, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v9, v1}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending broadcast- freq:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " rssi:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 129
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 130
    .end local p1
    .local v4, intent:Landroid/content/Intent;
    :try_start_6
    const-string v9, "signal_strength"

    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const/4 v10, -0x1

    invoke-virtual {v9, v10, v4}, Lcom/sec/android/app/fm/MainActivity;->setResult(ILandroid/content/Intent;)V

    .line 132
    const-string v9, "TestMode"

    const-string v10, "TEST_MODE_SET_FREQ 7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object p1, v4

    .end local v4           #intent:Landroid/content/Intent;
    .restart local p1
    goto/16 :goto_2

    .line 138
    .end local v1           #bintent:Landroid/content/Intent;
    .end local v3           #freq:Ljava/lang/String;
    .end local v6           #rssi:Ljava/lang/String;
    .end local v7           #val:I
    .end local v8           #volume:I
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    goto/16 :goto_5

    .line 141
    .end local v2           #e:Ljava/lang/Exception;
    .end local p1
    .restart local v1       #bintent:Landroid/content/Intent;
    .restart local v3       #freq:Ljava/lang/String;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v6       #rssi:Ljava/lang/String;
    .restart local v7       #val:I
    .restart local v8       #volume:I
    :catchall_1
    move-exception v9

    move-object p1, v4

    .end local v4           #intent:Landroid/content/Intent;
    .restart local p1
    goto/16 :goto_6

    .line 135
    .end local p1
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v2

    move-object p1, v4

    .end local v4           #intent:Landroid/content/Intent;
    .restart local p1
    goto/16 :goto_4
.end method
