.class public Lcom/vipercn/viper4android_v2/activity/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# static fields
.field private static m_bShellOpened:Z

.field private static m_diShellStdErr:Ljava/io/DataInputStream;

.field private static m_diShellStdOut:Ljava/io/DataInputStream;

.field private static m_doShellStdIn:Ljava/io/DataOutputStream;

.field private static m_psShellProcess:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    .line 17
    sput-object v0, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    .line 18
    sput-object v0, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    .line 19
    sput-object v0, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ByteArrayToStringArray([BI)[Ljava/lang/String;
    .locals 10
    .parameter "baByteArray"
    .parameter "nDataLength"

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 39
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v5

    .line 40
    :cond_1
    if-lez p1, :cond_0

    .line 41
    array-length v6, p0

    if-gt p1, v6, :cond_0

    .line 44
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, p1, :cond_2

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v3, lstString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    :goto_2
    if-lt v1, p1, :cond_7

    .line 76
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 77
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 78
    .local v5, szResult:[Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 46
    .end local v3           #lstString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #szResult:[Ljava/lang/String;
    :cond_2
    aget-byte v6, p0, v1

    const/16 v7, 0xd

    if-eq v6, v7, :cond_3

    aget-byte v6, p0, v1

    const/16 v7, 0xa

    if-ne v6, v7, :cond_5

    .line 48
    :cond_3
    aput-byte v8, p0, v1

    .line 44
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_5
    aget-byte v6, p0, v1

    const/16 v7, 0x20

    if-ge v6, v7, :cond_6

    aput-byte v9, p0, v1

    .line 52
    :cond_6
    aget-byte v6, p0, v1

    const/16 v7, 0x7e

    if-le v6, v7, :cond_4

    aput-byte v9, p0, v1

    goto :goto_3

    .line 59
    .restart local v3       #lstString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    aget-byte v6, p0, v1

    if-nez v6, :cond_8

    .line 57
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 60
    :cond_8
    const/4 v4, -0x1

    .line 61
    .local v4, nBlockLength:I
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_5
    if-lt v2, p1, :cond_a

    .line 69
    :goto_6
    const/4 v6, -0x1

    if-ne v4, v6, :cond_9

    sub-int v4, p1, v1

    .line 70
    :cond_9
    new-array v0, v4, [B

    .line 71
    .local v0, baBlockData:[B
    invoke-static {p0, v1, v0, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    invoke-static {v0}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ByteToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/2addr v1, v4

    goto :goto_4

    .line 63
    .end local v0           #baBlockData:[B
    :cond_a
    aget-byte v6, p0, v2

    if-nez v6, :cond_b

    .line 65
    sub-int v4, v2, v1

    .line 66
    goto :goto_6

    .line 61
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private static ByteToString([B)Ljava/lang/String;
    .locals 6
    .parameter "baByteArray"

    .prologue
    const/4 v2, 0x0

    .line 24
    if-nez p0, :cond_0

    move-object v1, v2

    .line 33
    :goto_0
    return-object v1

    .line 27
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-direct {v1, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 28
    .local v1, szResult:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, p0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    goto :goto_0

    .line 31
    .end local v1           #szResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    move-object v1, v2

    .line 33
    goto :goto_0
.end method

.method private static ClearStdOutAndErr()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 152
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "ViPER4Android_ShellCommand"

    const-string v1, "Flushing standard output ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :try_start_0
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-gtz v0, :cond_4

    .line 165
    :cond_1
    :goto_0
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    if-eqz v0, :cond_3

    .line 167
    const-string v0, "ViPER4Android_ShellCommand"

    const-string v1, "Flushing standard error ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    :try_start_1
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-gtz v0, :cond_5

    .line 178
    :cond_3
    :goto_1
    return-void

    .line 159
    :cond_4
    :try_start_2
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 172
    :cond_5
    :try_start_3
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static CloseShell()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 391
    sget-object v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_0

    .line 393
    const-string v2, "ViPER4Android_ShellCommand"

    const-string v3, "Closing shell stdandard input"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :try_start_0
    sget-object v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    const-string v3, "exit\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 397
    sget-object v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 398
    sget-object v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .local v1, ioe:Ljava/io/IOException;
    :goto_0
    sput-object v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    .line 403
    :cond_0
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ClearStdOutAndErr()V

    .line 404
    sget-object v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    if-eqz v2, :cond_1

    .line 406
    const-string v2, "ViPER4Android_ShellCommand"

    const-string v3, "Closing shell stdandard output"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :try_start_1
    sget-object v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    :goto_1
    sput-object v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    .line 411
    :cond_1
    sget-object v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    if-eqz v2, :cond_2

    .line 413
    const-string v2, "ViPER4Android_ShellCommand"

    const-string v3, "Closing shell stdandard error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :try_start_2
    sget-object v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 416
    :goto_2
    sput-object v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    .line 418
    :cond_2
    sget-object v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    if-eqz v2, :cond_3

    .line 422
    :try_start_3
    const-string v2, "ViPER4Android_ShellCommand"

    const-string v3, "Waiting for shell exit"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget-object v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 427
    .end local v1           #ioe:Ljava/io/IOException;
    :goto_3
    const-string v2, "ViPER4Android_ShellCommand"

    const-string v3, "Closing shell"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-object v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 429
    sput-object v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    .line 432
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    .line 433
    const-string v2, "ViPER4Android_ShellCommand"

    const-string v3, "Shell closed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 400
    :catch_0
    move-exception v1

    .restart local v1       #ioe:Ljava/io/IOException;
    const-string v2, "ViPER4Android_ShellCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Close shell stdandard input failed, msg = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    :catch_1
    move-exception v1

    const-string v2, "ViPER4Android_ShellCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Close shell stdandard output failed, msg = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 415
    :catch_2
    move-exception v1

    const-string v2, "ViPER4Android_ShellCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Close shell stdandard error failed, msg = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 425
    :catch_3
    move-exception v0

    .line 426
    .local v0, ie:Ljava/lang/InterruptedException;
    const-string v2, "ViPER4Android_ShellCommand"

    .end local v1           #ioe:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wait for shell exit failed, msg = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static ExecuteWithoutShell(Ljava/lang/String;Ljava/io/File;)I
    .locals 6
    .parameter "szExecutable"
    .parameter "fDirectory"

    .prologue
    const/high16 v1, -0x1

    .line 550
    if-nez p0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v1

    .line 551
    :cond_1
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 553
    const-string v3, "ViPER4Android_ShellCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Executing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/high16 v1, -0x1

    .line 557
    .local v1, nExitValue:I
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v2

    .line 558
    .local v2, psProg:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 559
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v1

    .line 560
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 572
    const-string v3, "ViPER4Android_ShellCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Program "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    .end local v2           #psProg:Ljava/lang/Process;
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Ljava/io/IOException;
    const-string v3, "ViPER4Android_ShellCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException, msg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 567
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 569
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "ViPER4Android_ShellCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InterruptedException, msg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static GetLastReturnValue()I
    .locals 5

    .prologue
    const/high16 v1, -0x1

    .line 531
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ClearStdOutAndErr()V

    .line 533
    const-string v3, "echo $?"

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommandPreserveOut(Ljava/lang/String;F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 545
    .local v2, szStdOut:[Ljava/lang/String;
    :cond_0
    return v1

    .line 534
    .end local v2           #szStdOut:[Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetStdOut()[Ljava/lang/String;

    move-result-object v2

    .line 535
    .restart local v2       #szStdOut:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 537
    const/high16 v1, -0x1

    .line 538
    .local v1, nRetValue:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 540
    :try_start_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 538
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static GetStdErr()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 118
    sget-object v7, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    if-nez v7, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-object v1

    .line 119
    :cond_1
    :try_start_0
    sget-object v7, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lez v7, :cond_0

    .line 122
    check-cast v1, [B

    .line 123
    .local v1, baDataOut:[B
    const/4 v5, 0x0

    .line 126
    .local v5, nDataLength:I
    :goto_1
    :try_start_1
    sget-object v7, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-gtz v7, :cond_3

    .line 145
    :cond_2
    :goto_2
    const-string v7, "ViPER4Android_ShellCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Standard error read "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v1, v5}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ByteArrayToStringArray([BI)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 120
    .end local v1           #baDataOut:[B
    .end local v5           #nDataLength:I
    :catch_0
    move-exception v3

    .local v3, ioe:Ljava/io/IOException;
    goto :goto_0

    .line 128
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v1       #baDataOut:[B
    .restart local v5       #nDataLength:I
    :cond_3
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 129
    .local v0, baData:[B
    sget-object v7, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    invoke-virtual {v7, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    .line 130
    .local v6, nReadCount:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 133
    const/4 v4, 0x0

    .line 134
    .local v4, nCurrentSize:I
    if-eqz v1, :cond_4

    array-length v4, v1

    .line 135
    :cond_4
    add-int v7, v4, v6

    new-array v2, v7, [B

    .line 136
    .local v2, baNewDataOut:[B
    if-eqz v1, :cond_5

    .line 137
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v7, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :cond_5
    const/4 v7, 0x0

    invoke-static {v0, v7, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    move-object v1, v2

    .line 140
    add-int/2addr v5, v6

    goto :goto_1

    .line 144
    .end local v0           #baData:[B
    .end local v2           #baNewDataOut:[B
    .end local v4           #nCurrentSize:I
    .end local v6           #nReadCount:I
    :catch_1
    move-exception v3

    .restart local v3       #ioe:Ljava/io/IOException;
    const-string v7, "ViPER4Android_ShellCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IOException, msg = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static GetStdOut()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 84
    sget-object v7, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    if-nez v7, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v1

    .line 85
    :cond_1
    :try_start_0
    sget-object v7, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lez v7, :cond_0

    .line 88
    check-cast v1, [B

    .line 89
    .local v1, baDataOut:[B
    const/4 v5, 0x0

    .line 92
    .local v5, nDataLength:I
    :goto_1
    :try_start_1
    sget-object v7, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-gtz v7, :cond_3

    .line 111
    :cond_2
    :goto_2
    const-string v7, "ViPER4Android_ShellCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Standard output read "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {v1, v5}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ByteArrayToStringArray([BI)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 86
    .end local v1           #baDataOut:[B
    .end local v5           #nDataLength:I
    :catch_0
    move-exception v3

    .local v3, ioe:Ljava/io/IOException;
    goto :goto_0

    .line 94
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v1       #baDataOut:[B
    .restart local v5       #nDataLength:I
    :cond_3
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 95
    .local v0, baData:[B
    sget-object v7, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    invoke-virtual {v7, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    .line 96
    .local v6, nReadCount:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, nCurrentSize:I
    if-eqz v1, :cond_4

    array-length v4, v1

    .line 101
    :cond_4
    add-int v7, v4, v6

    new-array v2, v7, [B

    .line 102
    .local v2, baNewDataOut:[B
    if-eqz v1, :cond_5

    .line 103
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v7, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    :cond_5
    const/4 v7, 0x0

    invoke-static {v0, v7, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    move-object v1, v2

    .line 106
    add-int/2addr v5, v6

    goto :goto_1

    .line 110
    .end local v0           #baData:[B
    .end local v2           #baNewDataOut:[B
    .end local v4           #nCurrentSize:I
    .end local v6           #nReadCount:I
    :catch_1
    move-exception v3

    .restart local v3       #ioe:Ljava/io/IOException;
    const-string v7, "ViPER4Android_ShellCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IOException, msg = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static OpenRootShell(Z)Z
    .locals 13
    .parameter "bReopen"

    .prologue
    const/4 v7, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 266
    const-string v9, "ViPER4Android_ShellCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Open shell, reopen = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-boolean v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    if-eqz v9, :cond_0

    if-nez p0, :cond_0

    .line 270
    const-string v8, "ViPER4Android_ShellCommand"

    const-string v9, "Shell already opened"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return v7

    .line 273
    :cond_0
    sget-boolean v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    if-eqz v9, :cond_1

    if-eqz p0, :cond_1

    .line 275
    const-string v9, "ViPER4Android_ShellCommand"

    const-string v10, "Close current shell"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    .line 281
    :cond_1
    :try_start_0
    const-string v9, "ViPER4Android_ShellCommand"

    const-string v10, "Starting su shell"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string v10, "su"

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    sput-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    const-string v9, "ViPER4Android_ShellCommand"

    const-string v10, "Fetching shell stdin, stdout and stderr"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v9, Ljava/io/DataOutputStream;

    sget-object v10, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    invoke-virtual {v10}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    .line 297
    new-instance v9, Ljava/io/DataInputStream;

    sget-object v10, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    .line 298
    new-instance v9, Ljava/io/DataInputStream;

    sget-object v10, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    invoke-virtual {v10}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    .line 301
    :try_start_1
    const-string v9, "ViPER4Android_ShellCommand"

    const-string v10, "Performing shell banner and query id, timeout = 20 secs"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    const-string v10, "echo \"Enter ViPER\'s Root Shell\"\n"

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 303
    sget-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    const-string v10, "id\n"

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 304
    sget-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 306
    const/4 v1, 0x0

    .local v1, bGotResult:Z
    const/4 v0, 0x0

    .line 307
    .local v0, bAccessGiven:Z
    const/4 v4, 0x0

    .local v4, nWaitCount:I
    :goto_1
    const/16 v9, 0xc8

    if-lt v4, v9, :cond_3

    .line 363
    :cond_2
    if-eqz v1, :cond_c

    if-nez v0, :cond_c

    .line 365
    const-string v7, "ViPER4Android_ShellCommand"

    const-string v9, "Acquire root permission failed"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v7, v8

    .line 367
    goto/16 :goto_0

    .line 284
    .end local v0           #bAccessGiven:Z
    .end local v1           #bGotResult:Z
    .end local v4           #nWaitCount:I
    :catch_0
    move-exception v3

    .line 286
    .local v3, ioe:Ljava/io/IOException;
    const-string v7, "ViPER4Android_ShellCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Start su shell failed, msg = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sput-object v12, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    .line 288
    sput-object v12, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    .line 289
    sput-object v12, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    .line 290
    sput-object v12, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    .line 291
    sput-boolean v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    move v7, v8

    .line 292
    goto/16 :goto_0

    .line 309
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v0       #bAccessGiven:Z
    .restart local v1       #bGotResult:Z
    .restart local v4       #nWaitCount:I
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetStdOut()[Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, szStdOut:[Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 312
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v9, v6

    if-lt v2, v9, :cond_6

    .line 333
    .end local v2           #i:I
    :cond_4
    :goto_3
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetStdErr()[Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, szStdErr:[Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 336
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    array-length v9, v5

    if-lt v2, v9, :cond_9

    .line 357
    .end local v2           #i:I
    :cond_5
    :goto_5
    if-nez v1, :cond_2

    .line 359
    const-wide/16 v9, 0x64

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 360
    const-string v9, "ViPER4Android_ShellCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v4, 0x1

    mul-int/lit8 v11, v11, 0x64

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ms waited, still no result"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 314
    .end local v5           #szStdErr:[Ljava/lang/String;
    .restart local v2       #i:I
    :cond_6
    const-string v9, "ViPER4Android_ShellCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "stdout: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v6, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    aget-object v9, v6, v2

    const-string v10, "uid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 317
    const-string v9, "ViPER4Android_ShellCommand"

    const-string v10, "Got result"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    aget-object v9, v6, v2

    const-string v10, "uid=0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 320
    const/4 v1, 0x1

    .line 321
    const/4 v0, 0x1

    .line 322
    goto :goto_3

    .line 326
    :cond_7
    const/4 v1, 0x1

    .line 327
    const/4 v0, 0x0

    .line 328
    goto :goto_3

    .line 312
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 338
    .restart local v5       #szStdErr:[Ljava/lang/String;
    :cond_9
    const-string v9, "ViPER4Android_ShellCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "stderr: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v5, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    aget-object v9, v5, v2

    const-string v10, "uid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 341
    const-string v9, "ViPER4Android_ShellCommand"

    const-string v10, "Got result"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    aget-object v9, v5, v2

    const-string v10, "uid=0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 344
    const/4 v1, 0x1

    .line 345
    const/4 v0, 0x1

    .line 346
    goto/16 :goto_5

    .line 350
    :cond_a
    const/4 v1, 0x1

    .line 351
    const/4 v0, 0x0

    .line 352
    goto/16 :goto_5

    .line 336
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 369
    .end local v2           #i:I
    .end local v5           #szStdErr:[Ljava/lang/String;
    .end local v6           #szStdOut:[Ljava/lang/String;
    :cond_c
    if-nez v1, :cond_d

    .line 371
    const-string v7, "ViPER4Android_ShellCommand"

    const-string v9, "Acquire root permission timeout"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v7, v8

    .line 373
    goto/16 :goto_0

    .line 376
    .end local v0           #bAccessGiven:Z
    .end local v1           #bGotResult:Z
    .end local v4           #nWaitCount:I
    :catch_1
    move-exception v3

    .line 378
    .restart local v3       #ioe:Ljava/io/IOException;
    const-string v7, "ViPER4Android_ShellCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "IOException, msg = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    move v7, v8

    .line 380
    goto/16 :goto_0

    .line 383
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v0       #bAccessGiven:Z
    .restart local v1       #bGotResult:Z
    .restart local v4       #nWaitCount:I
    :cond_d
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ClearStdOutAndErr()V

    .line 384
    sput-boolean v7, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    goto/16 :goto_0
.end method

.method public static OpenSysShell(Z)Z
    .locals 12
    .parameter "bReopen"

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 182
    const-string v8, "ViPER4Android_ShellCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Open shell, reopen = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-boolean v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    if-eqz v8, :cond_0

    if-nez p0, :cond_0

    .line 186
    const-string v7, "ViPER4Android_ShellCommand"

    const-string v8, "Shell already opened"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    return v6

    .line 189
    :cond_0
    sget-boolean v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    if-eqz v8, :cond_1

    if-eqz p0, :cond_1

    .line 191
    const-string v8, "ViPER4Android_ShellCommand"

    const-string v9, "Close current shell"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    .line 197
    :cond_1
    :try_start_0
    const-string v8, "ViPER4Android_ShellCommand"

    const-string v9, "Starting system shell"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "sh"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    sput-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    const-string v8, "ViPER4Android_ShellCommand"

    const-string v9, "Fetching shell stdin, stdout and stderr"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v8, Ljava/io/DataOutputStream;

    sget-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    invoke-virtual {v9}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    .line 213
    new-instance v8, Ljava/io/DataInputStream;

    sget-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    .line 214
    new-instance v8, Ljava/io/DataInputStream;

    sget-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    invoke-virtual {v9}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    .line 217
    :try_start_1
    const-string v8, "ViPER4Android_ShellCommand"

    const-string v9, "Performing shell banner and query id, timeout = 20 secs"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    const-string v9, "echo \"Enter ViPER\'s System Shell\"\n"

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 219
    sget-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    const-string v9, "id\n"

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 220
    sget-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, bGotResult:Z
    const/4 v3, 0x0

    .local v3, nWaitCount:I
    :goto_1
    const/16 v8, 0xc8

    if-lt v3, v8, :cond_3

    .line 244
    :cond_2
    if-nez v0, :cond_9

    .line 246
    const-string v6, "ViPER4Android_ShellCommand"

    const-string v8, "Wait system shell timeout"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v7

    .line 248
    goto :goto_0

    .line 200
    .end local v0           #bGotResult:Z
    .end local v3           #nWaitCount:I
    :catch_0
    move-exception v2

    .line 202
    .local v2, ioe:Ljava/io/IOException;
    const-string v6, "ViPER4Android_ShellCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Start system shell failed, msg = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sput-object v11, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_psShellProcess:Ljava/lang/Process;

    .line 204
    sput-object v11, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    .line 205
    sput-object v11, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    .line 206
    sput-object v11, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    .line 207
    sput-boolean v7, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    move v6, v7

    .line 208
    goto/16 :goto_0

    .line 225
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v0       #bGotResult:Z
    .restart local v3       #nWaitCount:I
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetStdOut()[Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, szStdOut:[Ljava/lang/String;
    if-eqz v5, :cond_4

    const/4 v0, 0x1

    .line 227
    :cond_4
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetStdErr()[Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, szStdErr:[Ljava/lang/String;
    if-eqz v4, :cond_5

    const/4 v0, 0x1

    .line 229
    :cond_5
    if-eqz v0, :cond_8

    .line 231
    if-eqz v5, :cond_6

    .line 232
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v8, v5

    if-lt v1, v8, :cond_7

    .line 234
    .end local v1           #i:I
    :cond_6
    if-eqz v4, :cond_2

    .line 235
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v8, v4

    if-ge v1, v8, :cond_2

    .line 236
    const-string v8, "ViPER4Android_ShellCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "stderr: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v4, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 233
    :cond_7
    const-string v8, "ViPER4Android_ShellCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "stdout: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v5, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 240
    .end local v1           #i:I
    :cond_8
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 241
    const-string v8, "ViPER4Android_ShellCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v10, v3, 0x1

    mul-int/lit8 v10, v10, 0x64

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " ms waited, still no result"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 251
    .end local v0           #bGotResult:Z
    .end local v3           #nWaitCount:I
    .end local v4           #szStdErr:[Ljava/lang/String;
    .end local v5           #szStdOut:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 253
    .restart local v2       #ioe:Ljava/io/IOException;
    const-string v6, "ViPER4Android_ShellCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IOException, msg = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    move v6, v7

    .line 255
    goto/16 :goto_0

    .line 258
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v0       #bGotResult:Z
    .restart local v3       #nWaitCount:I
    :cond_9
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ClearStdOutAndErr()V

    .line 259
    sput-boolean v6, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    goto/16 :goto_0
.end method

.method public static RootExecuteWithoutShell(Ljava/lang/String;Ljava/io/File;)I
    .locals 7
    .parameter "szExecutable"
    .parameter "fDirectory"

    .prologue
    const/high16 v1, -0x1

    .line 579
    if-nez p0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v1

    .line 580
    :cond_1
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 582
    const-string v3, "ViPER4Android_ShellCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Root executing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/high16 v1, -0x1

    .line 586
    .local v1, nExitValue:I
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "su"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "-c"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v2

    .line 587
    .local v2, psProg:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 588
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v1

    .line 589
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 601
    const-string v3, "ViPER4Android_ShellCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Program "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    .end local v2           #psProg:Ljava/lang/Process;
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Ljava/io/IOException;
    const-string v3, "ViPER4Android_ShellCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException, msg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "ViPER4Android_ShellCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InterruptedException, msg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static SendShellCommand(Ljava/lang/String;F)Z
    .locals 11
    .parameter "szCommand"
    .parameter "nMaxWaitSeconds"

    .prologue
    const/4 v7, 0x0

    .line 438
    const-string v8, "ViPER4Android_ShellCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Sending shell \""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\", wait "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " seconds"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    sget-boolean v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    if-nez v8, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v7

    .line 441
    :cond_1
    sget-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    if-eqz v8, :cond_0

    .line 442
    sget-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    if-eqz v8, :cond_0

    .line 443
    sget-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    if-eqz v8, :cond_0

    .line 445
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ClearStdOutAndErr()V

    .line 448
    const/4 v3, 0x0

    .line 449
    .local v3, nOldCount:I
    :try_start_0
    sget-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v8

    sget-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    add-int v3, v8, v9

    .line 451
    :goto_1
    :try_start_1
    sget-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 452
    sget-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 453
    const/4 v4, 0x0

    .local v4, nWaitCount:I
    :goto_2
    const/high16 v8, 0x4120

    mul-float/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->round(F)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-le v4, v8, :cond_4

    .line 473
    :goto_3
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetStdOut()[Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, szStdOut:[Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 476
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v7, v6

    if-lt v0, v7, :cond_6

    .line 479
    .end local v0           #i:I
    :cond_2
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetStdErr()[Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, szStdErr:[Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 482
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    array-length v7, v5

    if-lt v0, v7, :cond_7

    .line 486
    .end local v0           #i:I
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 450
    .end local v4           #nWaitCount:I
    .end local v5           #szStdErr:[Ljava/lang/String;
    .end local v6           #szStdOut:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, ioe:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1

    .line 455
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v4       #nWaitCount:I
    :cond_4
    const/4 v2, 0x0

    .line 456
    .local v2, nCurrCount:I
    :try_start_2
    sget-object v8, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v8

    sget-object v9, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->available()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    add-int v2, v8, v9

    .line 458
    :goto_6
    :try_start_3
    const-string v8, "ViPER4Android_ShellCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Waiting for command return, idx = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", old = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", curr = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eq v2, v3, :cond_5

    .line 461
    const-string v8, "ViPER4Android_ShellCommand"

    const-string v9, "Command returned"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 467
    .end local v2           #nCurrCount:I
    .end local v4           #nWaitCount:I
    :catch_1
    move-exception v1

    .line 469
    .restart local v1       #ioe:Ljava/io/IOException;
    const-string v8, "ViPER4Android_ShellCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Send shell failed, msg = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 457
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v2       #nCurrCount:I
    .restart local v4       #nWaitCount:I
    :catch_2
    move-exception v1

    .restart local v1       #ioe:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_6

    .line 464
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_5
    const-wide/16 v8, 0x64

    :try_start_4
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 453
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 477
    .end local v2           #nCurrCount:I
    .restart local v0       #i:I
    .restart local v6       #szStdOut:[Ljava/lang/String;
    :cond_6
    const-string v7, "ViPER4Android_ShellCommand(stdout)"

    aget-object v8, v6, v0

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 483
    .restart local v5       #szStdErr:[Ljava/lang/String;
    :cond_7
    const-string v7, "ViPER4Android_ShellCommand(stderr)"

    aget-object v8, v5, v0

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5
.end method

.method public static SendShellCommandPreserveOut(Ljava/lang/String;F)Z
    .locals 8
    .parameter "szCommand"
    .parameter "nMaxWaitSeconds"

    .prologue
    const/4 v4, 0x0

    .line 491
    const-string v5, "ViPER4Android_ShellCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sending shell \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", wait "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sget-boolean v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_bShellOpened:Z

    if-nez v5, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v4

    .line 494
    :cond_1
    sget-object v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    if-eqz v5, :cond_0

    .line 495
    sget-object v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    if-eqz v5, :cond_0

    .line 496
    sget-object v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    if-eqz v5, :cond_0

    .line 498
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ClearStdOutAndErr()V

    .line 501
    const/4 v2, 0x0

    .line 502
    .local v2, nOldCount:I
    :try_start_0
    sget-object v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->available()I

    move-result v5

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    add-int v2, v5, v6

    .line 504
    :goto_1
    :try_start_1
    sget-object v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 505
    sget-object v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_doShellStdIn:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 506
    const/4 v3, 0x0

    .local v3, nWaitCount:I
    :goto_2
    const/high16 v5, 0x4120

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-le v3, v5, :cond_2

    .line 526
    :goto_3
    const/4 v4, 0x1

    goto :goto_0

    .line 503
    .end local v3           #nWaitCount:I
    :catch_0
    move-exception v0

    .local v0, ioe:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_1

    .line 508
    .end local v0           #ioe:Ljava/io/IOException;
    .restart local v3       #nWaitCount:I
    :cond_2
    const/4 v1, 0x0

    .line 509
    .local v1, nCurrCount:I
    :try_start_2
    sget-object v5, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdOut:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->available()I

    move-result v5

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->m_diShellStdErr:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->available()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    add-int v1, v5, v6

    .line 511
    :goto_4
    :try_start_3
    const-string v5, "ViPER4Android_ShellCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Waiting for command return, idx = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", old = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", curr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-eq v1, v2, :cond_3

    .line 514
    const-string v5, "ViPER4Android_ShellCommand"

    const-string v6, "Command returned"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 520
    .end local v1           #nCurrCount:I
    .end local v3           #nWaitCount:I
    :catch_1
    move-exception v0

    .line 522
    .restart local v0       #ioe:Ljava/io/IOException;
    const-string v5, "ViPER4Android_ShellCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Send shell failed, msg = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 510
    .end local v0           #ioe:Ljava/io/IOException;
    .restart local v1       #nCurrCount:I
    .restart local v3       #nWaitCount:I
    :catch_2
    move-exception v0

    .restart local v0       #ioe:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_4

    .line 517
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_3
    const-wide/16 v5, 0x64

    :try_start_4
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 506
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
