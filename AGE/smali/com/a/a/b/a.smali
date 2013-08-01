.class public abstract Lcom/a/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field final a:[Ljava/lang/String;

.field b:Z

.field c:I

.field d:I

.field e:I


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/a/a/b/a;->b:Z

    iput v0, p0, Lcom/a/a/b/a;->d:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/a/a/b/a;->e:I

    iput-object p2, p0, Lcom/a/a/b/a;->a:[Ljava/lang/String;

    iput p1, p0, Lcom/a/a/b/a;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/a/a/b/a;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/a/a/b/a;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending command(s): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "finished."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(ILjava/lang/String;)V
.end method

.method public a(Ljava/io/OutputStreamWriter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/a/a/b/c;->e()V

    const-string v0, "Terminating all shells."

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/a/a/b/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/a/a/b/a;->e:I

    invoke-virtual {p0, v0}, Lcom/a/a/b/a;->c(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/a/a/b/a;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/b/a;->b:Z

    iget v0, p0, Lcom/a/a/b/a;->d:I

    invoke-virtual {p0, v0}, Lcom/a/a/b/a;->a(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/a/a/b/a;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/b/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " did not finish."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    monitor-enter p0

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/b/a;->b:Z

    if-nez v0, :cond_1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    iget-boolean v0, p0, Lcom/a/a/b/a;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/b/a;->b:Z

    const-string v0, "Timeout Exception has occurred."

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    const-string v0, "Timeout Exception"

    invoke-virtual {p0, v0}, Lcom/a/a/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
