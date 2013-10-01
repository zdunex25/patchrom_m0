.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mCurrent:[C

.field private mEmptyLine:Z

.field private final mIndent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "indent"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 36
    iput-object p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndent:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private writeIndent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_1

    .line 76
    iput-boolean v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 77
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    array-length v1, v1

    invoke-super {p0, v0, v2, v1}, Ljava/io/PrintWriter;->write([CII)V

    .line 84
    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseIndent()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    .line 47
    return-void
.end method

.method public increaseIndent()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    .line 42
    return-void
.end method

.method public printPair(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public write([CII)V
    .locals 6
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 55
    add-int v0, p2, p3

    .line 56
    .local v0, bufferEnd:I
    move v4, p2

    .line 57
    .local v4, lineStart:I
    move v2, p2

    .local v2, lineEnd:I
    move v3, v2

    .line 58
    .end local v2           #lineEnd:I
    .local v3, lineEnd:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 59
    add-int/lit8 v2, v3, 0x1

    .end local v3           #lineEnd:I
    .restart local v2       #lineEnd:I
    aget-char v1, p1, v3

    .line 60
    .local v1, ch:C
    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->writeIndent()V

    .line 62
    sub-int v5, v2, v4

    invoke-super {p0, p1, v4, v5}, Ljava/io/PrintWriter;->write([CII)V

    .line 63
    move v4, v2

    .line 64
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    :cond_0
    move v3, v2

    .line 66
    .end local v2           #lineEnd:I
    .restart local v3       #lineEnd:I
    goto :goto_0

    .line 68
    .end local v1           #ch:C
    :cond_1
    if-eq v4, v3, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->writeIndent()V

    .line 70
    sub-int v5, v3, v4

    invoke-super {p0, p1, v4, v5}, Ljava/io/PrintWriter;->write([CII)V

    .line 72
    :cond_2
    return-void
.end method
