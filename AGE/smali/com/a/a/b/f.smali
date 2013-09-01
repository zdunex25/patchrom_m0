.class public Lcom/a/a/b/f;
.super Ljava/lang/Thread;


# instance fields
.field public a:I

.field public b:Ljava/lang/Process;

.field public c:Ljava/io/BufferedReader;

.field public d:Ljava/io/OutputStreamWriter;


# direct methods
.method private constructor <init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, -0x38f

    iput v0, p0, Lcom/a/a/b/f;->a:I

    iput-object p1, p0, Lcom/a/a/b/f;->b:Ljava/lang/Process;

    iput-object p2, p0, Lcom/a/a/b/f;->c:Ljava/io/BufferedReader;

    iput-object p3, p0, Lcom/a/a/b/f;->d:Ljava/io/OutputStreamWriter;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;Lcom/a/a/b/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/b/f;-><init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/f;->d:Ljava/io/OutputStreamWriter;

    const-string v1, "echo Started\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/b/f;->d:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/a/a/b/f;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/16 v1, -0x2a

    iput v1, p0, Lcom/a/a/b/f;->a:I

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a/b/f;->a:I

    goto :goto_1

    :cond_2
    const-string v0, "unkown error occured."

    invoke-static {v0}, Lcom/a/a/b/c;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    const-string v0, "RootAccess denied?."

    invoke-static {v0}, Lcom/a/a/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
