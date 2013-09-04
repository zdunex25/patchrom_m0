.class public Lcom/a/a/b/c;
.super Ljava/lang/Object;


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Lcom/a/a/b/c;

.field private static h:Lcom/a/a/b/c;

.field private static i:Lcom/a/a/b/c;

.field private static j:I


# instance fields
.field private final a:Ljava/lang/Process;

.field private final b:Ljava/io/BufferedReader;

.field private final c:Ljava/io/OutputStreamWriter;

.field private final d:Ljava/util/List;

.field private e:Z

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/a/a/b/c;->f:Ljava/lang/String;

    sput-object v1, Lcom/a/a/b/c;->g:Lcom/a/a/b/c;

    sput-object v1, Lcom/a/a/b/c;->h:Lcom/a/a/b/c;

    sput-object v1, Lcom/a/a/b/c;->i:Lcom/a/a/b/c;

    const/16 v0, 0x2710

    sput v0, Lcom/a/a/b/c;->j:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    iput-boolean v2, p0, Lcom/a/a/b/c;->e:Z

    new-instance v0, Lcom/a/a/b/d;

    invoke-direct {v0, p0}, Lcom/a/a/b/d;-><init>(Lcom/a/a/b/c;)V

    iput-object v0, p0, Lcom/a/a/b/c;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/a/a/b/e;

    invoke-direct {v0, p0}, Lcom/a/a/b/e;-><init>(Lcom/a/a/b/c;)V

    iput-object v0, p0, Lcom/a/a/b/c;->l:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting shell: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ProcessBuilder;

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->a:Ljava/lang/Process;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/a/a/b/c;->a:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/a/a/b/c;->b:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/a/a/b/c;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/b/c;->c:Ljava/io/OutputStreamWriter;

    new-instance v0, Lcom/a/a/b/f;

    iget-object v1, p0, Lcom/a/a/b/c;->a:Ljava/lang/Process;

    iget-object v2, p0, Lcom/a/a/b/c;->b:Ljava/io/BufferedReader;

    iget-object v3, p0, Lcom/a/a/b/c;->c:Ljava/io/OutputStreamWriter;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/b/f;-><init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;Lcom/a/a/b/d;)V

    invoke-virtual {v0}, Lcom/a/a/b/f;->start()V

    :try_start_0
    sget v1, Lcom/a/a/b/c;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/b/f;->join(J)V

    iget v1, v0, Lcom/a/a/b/f;->a:I

    const/16 v2, -0x38f

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/a/a/b/c;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    sget-object v2, Lcom/a/a/b/c;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/a/a/b/f;->interrupt()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_0
    :try_start_1
    iget v1, v0, Lcom/a/a/b/f;->a:I

    const/16 v2, -0x2a

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/a/a/b/c;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    new-instance v1, Lcom/a/a/a/a;

    const-string v2, "Root Access Denied"

    invoke-direct {v1, v2}, Lcom/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/a/a/b/c;->k:Ljava/lang/Runnable;

    const-string v3, "Shell Input"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/a/a/b/c;->l:Ljava/lang/Runnable;

    const-string v3, "Shell Output"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public static a(I)Lcom/a/a/b/c;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/a/a/b/c;->a(II)Lcom/a/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Lcom/a/a/b/c;
    .locals 4

    sput p0, Lcom/a/a/b/c;->j:I

    sget-object v0, Lcom/a/a/b/c;->g:Lcom/a/a/b/c;

    if-nez v0, :cond_1

    const-string v0, "Starting Root Shell!"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    const-string v3, "su"

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/a/a/b/c;->g:Lcom/a/a/b/c;

    if-nez v1, :cond_2

    :try_start_0
    new-instance v1, Lcom/a/a/b/c;

    invoke-direct {v1, v3}, Lcom/a/a/b/c;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/a/a/b/c;->g:Lcom/a/a/b/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v1

    add-int/lit8 v1, v0, 0x1

    if-lt v0, p1, :cond_0

    const-string v0, "IOException, could not start shell"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    throw v2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "Using Existing Root Shell!"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/a/a/b/c;->g:Lcom/a/a/b/c;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/a/a/b/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/a/a/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/b/c;->g()V

    return-void
.end method

.method public static b(I)Lcom/a/a/b/c;
    .locals 2

    sput p0, Lcom/a/a/b/c;->j:I

    :try_start_0
    sget-object v0, Lcom/a/a/b/c;->h:Lcom/a/a/b/c;

    if-nez v0, :cond_0

    const-string v0, "Starting Shell!"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/a/a/b/c;

    const-string v1, "/system/bin/sh"

    invoke-direct {v0, v1}, Lcom/a/a/b/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/b/c;->h:Lcom/a/a/b/c;

    :goto_0
    sget-object v0, Lcom/a/a/b/c;->h:Lcom/a/a/b/c;

    return-object v0

    :cond_0
    const-string v0, "Using Existing Shell!"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/a/a/a/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/a/a/b/c;->i:Lcom/a/a/b/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/a/a/b/c;->i:Lcom/a/a/b/c;

    invoke-virtual {v0}, Lcom/a/a/b/c;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/a/a/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/b/c;->f()V

    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/a/a/b/c;->g:Lcom/a/a/b/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/a/a/b/c;->g:Lcom/a/a/b/c;

    invoke-virtual {v0}, Lcom/a/a/b/c;->a()V

    goto :goto_0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/a/a/b/c;->h:Lcom/a/a/b/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/a/a/b/c;->h:Lcom/a/a/b/c;

    invoke-virtual {v0}, Lcom/a/a/b/c;->a()V

    goto :goto_0
.end method

.method public static e()V
    .locals 0

    invoke-static {}, Lcom/a/a/b/c;->d()V

    invoke-static {}, Lcom/a/a/b/c;->c()V

    invoke-static {}, Lcom/a/a/b/c;->b()V

    return-void
.end method

.method private f()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v4, v2

    move-object v0, v5

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/a/a/b/c;->b:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_1
    const-string v1, "Read all output"

    invoke-static {v1}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/a/b/c;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    iget-object v1, p0, Lcom/a/a/b/c;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    const-string v1, "Shell destroyed"

    invoke-static {v1}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_8

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a;

    :cond_1
    const-string v1, "Unexpected Termination."

    invoke-virtual {v0, v1}, Lcom/a/a/b/a;->b(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    move-object v0, v5

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v4, v3, :cond_3

    iget-boolean v1, p0, Lcom/a/a/b/c;->e:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a;

    :cond_4
    const-string v3, "F*D^W@#FGF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5

    iget v6, v0, Lcom/a/a/b/a;->d:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/a/a/b/a;->a(ILjava/lang/String;)V

    :cond_5
    if-ltz v3, :cond_7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v1, v7

    if-lt v1, v10, :cond_6

    aget-object v1, v7, v9

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_3
    const/4 v6, -0x1

    const/4 v8, 0x2

    :try_start_1
    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    :goto_4
    if-ne v1, v4, :cond_6

    invoke-virtual {v0, v6}, Lcom/a/a/b/a;->b(I)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v0, v5

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_3

    :cond_6
    move-object v1, v3

    :cond_7
    iget v3, v0, Lcom/a/a/b/a;->d:I

    invoke-virtual {v0, v3, v1}, Lcom/a/a/b/a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-void

    :catch_1
    move-exception v7

    goto :goto_4
.end method

.method private g()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/a/a/b/c;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/a/a/a;->a(Ljava/lang/String;ILjava/lang/Exception;)V

    :goto_2
    return-void

    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/a/a/b/c;->c:Ljava/io/OutputStreamWriter;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a;

    invoke-virtual {v0, v3}, Lcom/a/a/b/a;->a(Ljava/io/OutputStreamWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\necho F*D^W@#FGF "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " $?\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/a/a/b/c;->e:Z

    if-eqz v0, :cond_2

    const-string v0, "\nexit 0\n"

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    const-string v0, "Closing shell"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/a/a/b/a;)Lcom/a/a/b/a;
    .locals 2

    iget-boolean v0, p0, Lcom/a/a/b/c;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to add commands to a closed shell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/a/a/b/c;->g:Lcom/a/a/b/c;

    if-ne p0, v0, :cond_0

    sput-object v1, Lcom/a/a/b/c;->g:Lcom/a/a/b/c;

    :cond_0
    sget-object v0, Lcom/a/a/b/c;->h:Lcom/a/a/b/c;

    if-ne p0, v0, :cond_1

    sput-object v1, Lcom/a/a/b/c;->h:Lcom/a/a/b/c;

    :cond_1
    sget-object v0, Lcom/a/a/b/c;->i:Lcom/a/a/b/c;

    if-ne p0, v0, :cond_2

    sput-object v1, Lcom/a/a/b/c;->i:Lcom/a/a/b/c;

    :cond_2
    iget-object v1, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/a/a/b/c;->e:Z

    iget-object v0, p0, Lcom/a/a/b/c;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
