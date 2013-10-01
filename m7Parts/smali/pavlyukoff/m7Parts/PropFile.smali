.class public Lpavlyukoff/m7Parts/PropFile;
.super Ljava/lang/Object;
.source "PropFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpavlyukoff/m7Parts/PropFile$DataLine;,
        Lpavlyukoff/m7Parts/PropFile$FindMode;,
        Lpavlyukoff/m7Parts/PropFile$ReplaceMode;
    }
.end annotation


# instance fields
.field private lines:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lpavlyukoff/m7Parts/PropFile$DataLine;",
            ">;"
        }
    .end annotation
.end field

.field private propFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    .line 15
    iput-object v0, p0, Lpavlyukoff/m7Parts/PropFile;->propFile:Ljava/io/File;

    .line 12
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "paramArrayOfString"

    .prologue
    .line 29
    new-instance v0, Lpavlyukoff/m7Parts/PropFile;

    invoke-direct {v0}, Lpavlyukoff/m7Parts/PropFile;-><init>()V

    .line 30
    .local v0, localPropFile:Lpavlyukoff/m7Parts/PropFile;
    const-string v1, "e:/sdcard/.build.prop"

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/PropFile;->load(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string v1, "media.stagefright.enable-http1"

    const-string v2, "BBB"

    invoke-virtual {v0, v1, v2}, Lpavlyukoff/m7Parts/PropFile;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lpavlyukoff/m7Parts/PropFile;->save()Z

    .line 35
    :cond_0
    return-void
.end method

.method public static replacePropLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lpavlyukoff/m7Parts/PropFile$FindMode;Lpavlyukoff/m7Parts/PropFile$ReplaceMode;ZZ)Z
    .locals 8
    .parameter "paramString1"
    .parameter "paramString2"
    .parameter "paramString3"
    .parameter "paramString4"
    .parameter "paramFindMode"
    .parameter "paramReplaceMode"
    .parameter "paramBoolean1"
    .parameter "paramBoolean2"

    .prologue
    .line 39
    new-instance v0, Lpavlyukoff/m7Parts/PropFile;

    invoke-direct {v0}, Lpavlyukoff/m7Parts/PropFile;-><init>()V

    .line 40
    .local v0, localPropFile:Lpavlyukoff/m7Parts/PropFile;
    const/4 v7, 0x0

    .line 41
    .local v7, b1:Z
    invoke-virtual {v0, p0}, Lpavlyukoff/m7Parts/PropFile;->load(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    .line 42
    invoke-virtual/range {v0 .. v6}, Lpavlyukoff/m7Parts/PropFile;->replaceLine(Ljava/lang/String;Ljava/lang/String;Lpavlyukoff/m7Parts/PropFile$FindMode;Lpavlyukoff/m7Parts/PropFile$ReplaceMode;ZZ)Z

    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 47
    if-nez p1, :cond_0

    .line 48
    invoke-virtual {v0}, Lpavlyukoff/m7Parts/PropFile;->save()Z

    move-result v7

    .line 54
    :cond_0
    :goto_0
    return v7

    .line 52
    :cond_1
    invoke-virtual {v0, p1}, Lpavlyukoff/m7Parts/PropFile;->saveAs(Ljava/lang/String;)Z

    move-result v7

    goto :goto_0
.end method


# virtual methods
.method public appendLine(Ljava/lang/String;)V
    .locals 1
    .parameter "paramString"

    .prologue
    .line 59
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lpavlyukoff/m7Parts/PropFile;->insertLine(Ljava/lang/String;I)Z

    .line 60
    return-void
.end method

.method public commentByKey(Ljava/lang/String;Z)V
    .locals 5
    .parameter "paramString"
    .parameter "paramBoolean"

    .prologue
    .line 64
    iget-object v2, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    .local v1, localIterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    return-void

    .line 69
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpavlyukoff/m7Parts/PropFile$DataLine;

    .line 70
    .local v0, localDataLine:Lpavlyukoff/m7Parts/PropFile$DataLine;
    invoke-virtual {v0}, Lpavlyukoff/m7Parts/PropFile$DataLine;->getValue()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lpavlyukoff/m7Parts/PropFile$DataLine;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpavlyukoff/m7Parts/PropFile$DataLine;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "paramString"

    .prologue
    .line 78
    iget-object v2, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 79
    .local v1, localIterator:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 82
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpavlyukoff/m7Parts/PropFile$DataLine;

    .line 83
    .local v0, localDataLine:Lpavlyukoff/m7Parts/PropFile$DataLine;
    invoke-virtual {v0}, Lpavlyukoff/m7Parts/PropFile$DataLine;->getValue()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v0}, Lpavlyukoff/m7Parts/PropFile$DataLine;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public insertAfterLine(Ljava/lang/String;Ljava/lang/String;Lpavlyukoff/m7Parts/PropFile$FindMode;Z)Z
    .locals 4
    .parameter "paramString1"
    .parameter "paramString2"
    .parameter "paramFindMode"
    .parameter "paramBoolean"

    .prologue
    .line 93
    iget-object v3, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 94
    .local v2, localIterator:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 95
    .local v0, i:I
    const/4 v1, 0x0

    .line 97
    .local v1, j:I
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    :goto_0
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {p0, p2, v0}, Lpavlyukoff/m7Parts/PropFile;->insertLine(Ljava/lang/String;I)Z

    .line 111
    const/4 v3, 0x1

    .line 113
    :goto_1
    return v3

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpavlyukoff/m7Parts/PropFile$DataLine;

    invoke-virtual {v3}, Lpavlyukoff/m7Parts/PropFile$DataLine;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p3, p4}, Lpavlyukoff/m7Parts/PropFile;->match(Ljava/lang/String;Ljava/lang/String;Lpavlyukoff/m7Parts/PropFile$FindMode;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const/4 v1, 0x1

    .line 103
    goto :goto_0

    .line 113
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public insertLine(Ljava/lang/String;I)Z
    .locals 4
    .parameter "paramString"
    .parameter "paramInt"

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 118
    new-instance v0, Lpavlyukoff/m7Parts/PropFile$DataLine;

    invoke-direct {v0, p1}, Lpavlyukoff/m7Parts/PropFile$DataLine;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, localDataLine:Lpavlyukoff/m7Parts/PropFile$DataLine;
    if-ne p2, v3, :cond_1

    .line 121
    iget-object v2, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    iget-object v2, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p2, v2, :cond_3

    .line 129
    iget-object v2, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eq p2, v2, :cond_2

    .line 132
    const/4 v1, 0x0

    goto :goto_0

    .line 134
    :cond_2
    iget-object v2, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2, p2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_3
    if-lt p2, v3, :cond_0

    .line 140
    iget-object v2, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 8
    .parameter "paramString"

    .prologue
    const/4 v5, 0x1

    .line 148
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    .line 152
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 153
    .local v1, localBufferedReader:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lpavlyukoff/m7Parts/PropFile;->propFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, str:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 161
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 162
    const/4 v0, 0x1

    .line 180
    .end local v4           #str:Ljava/lang/String;
    .local v0, i:I
    :goto_1
    if-ne v0, v5, :cond_1

    :goto_2
    return v5

    .line 165
    .end local v0           #i:I
    .restart local v4       #str:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    new-instance v7, Lpavlyukoff/m7Parts/PropFile$DataLine;

    invoke-direct {v7, v4}, Lpavlyukoff/m7Parts/PropFile$DataLine;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 168
    .end local v4           #str:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 170
    .local v3, localIOException:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    const/4 v6, 0x0

    iput-object v6, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 172
    const/4 v0, 0x0

    .restart local v0       #i:I
    goto :goto_1

    .line 175
    .end local v0           #i:I
    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v3           #localIOException:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 178
    .local v2, localFileNotFoundException:Ljava/io/FileNotFoundException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 180
    .end local v2           #localFileNotFoundException:Ljava/io/FileNotFoundException;
    .restart local v0       #i:I
    .restart local v1       #localBufferedReader:Ljava/io/BufferedReader;
    :cond_1
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public match(Ljava/lang/String;Ljava/lang/String;Lpavlyukoff/m7Parts/PropFile$FindMode;Z)Z
    .locals 2
    .parameter "paramString1"
    .parameter "paramString2"
    .parameter "paramFindMode"
    .parameter "paramBoolean"

    .prologue
    .line 185
    move-object v0, p1

    .line 186
    .local v0, str:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_0
    sget-object v1, Lpavlyukoff/m7Parts/PropFile$FindMode;->StartsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

    if-ne p3, v1, :cond_1

    .line 191
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 194
    :cond_1
    sget-object v1, Lpavlyukoff/m7Parts/PropFile$FindMode;->EndsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

    if-ne p3, v1, :cond_2

    .line 195
    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 198
    :cond_2
    sget-object v1, Lpavlyukoff/m7Parts/PropFile$FindMode;->Equals:Lpavlyukoff/m7Parts/PropFile$FindMode;

    if-ne p3, v1, :cond_3

    .line 199
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 202
    :cond_3
    sget-object v1, Lpavlyukoff/m7Parts/PropFile$FindMode;->EqualsIgnoreCase:Lpavlyukoff/m7Parts/PropFile$FindMode;

    if-ne p3, v1, :cond_5

    .line 203
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    :cond_4
    const/4 v1, 0x1

    .line 209
    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "paramString1"
    .parameter "paramString2"

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lpavlyukoff/m7Parts/PropFile$FindMode;->StartsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

    sget-object v4, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;->Line:Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lpavlyukoff/m7Parts/PropFile;->replaceLine(Ljava/lang/String;Ljava/lang/String;Lpavlyukoff/m7Parts/PropFile$FindMode;Lpavlyukoff/m7Parts/PropFile$ReplaceMode;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpavlyukoff/m7Parts/PropFile;->appendLine(Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method

.method public removeByKey(Ljava/lang/String;Z)V
    .locals 2
    .parameter "paramString"
    .parameter "paramBoolean"

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lpavlyukoff/m7Parts/PropFile$FindMode;->StartsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

    invoke-virtual {p0, v0, v1, p2}, Lpavlyukoff/m7Parts/PropFile;->removeLine(Ljava/lang/String;Lpavlyukoff/m7Parts/PropFile$FindMode;Z)Z

    .line 221
    return-void
.end method

.method public removeByKeyValue(Ljava/lang/String;Z)V
    .locals 1
    .parameter "paramString"
    .parameter "paramBoolean"

    .prologue
    .line 225
    sget-object v0, Lpavlyukoff/m7Parts/PropFile$FindMode;->Equals:Lpavlyukoff/m7Parts/PropFile$FindMode;

    invoke-virtual {p0, p1, v0, p2}, Lpavlyukoff/m7Parts/PropFile;->removeLine(Ljava/lang/String;Lpavlyukoff/m7Parts/PropFile$FindMode;Z)Z

    .line 226
    return-void
.end method

.method public removeLine(Ljava/lang/String;Lpavlyukoff/m7Parts/PropFile$FindMode;Z)Z
    .locals 5
    .parameter "paramString"
    .parameter "paramFindMode"
    .parameter "onlyFirst"

    .prologue
    .line 230
    iget-object v4, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 231
    .local v1, localIterator:Ljava/util/Iterator;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 232
    .local v2, localLinkedList:Ljava/util/LinkedList;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 253
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 255
    const/4 v4, 0x0

    .line 258
    :goto_1
    return v4

    .line 234
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpavlyukoff/m7Parts/PropFile$DataLine;

    .line 235
    .local v0, localDataLine:Lpavlyukoff/m7Parts/PropFile$DataLine;
    invoke-virtual {v0}, Lpavlyukoff/m7Parts/PropFile$DataLine;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, str:Ljava/lang/String;
    sget-object v4, Lpavlyukoff/m7Parts/PropFile$FindMode;->StartsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

    if-ne p2, v4, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_2
    sget-object v4, Lpavlyukoff/m7Parts/PropFile$FindMode;->Equals:Lpavlyukoff/m7Parts/PropFile$FindMode;

    if-ne p2, v4, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 242
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_3
    sget-object v4, Lpavlyukoff/m7Parts/PropFile$FindMode;->EqualsIgnoreCase:Lpavlyukoff/m7Parts/PropFile$FindMode;

    if-ne p2, v4, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_4
    if-nez p3, :cond_0

    goto :goto_0

    .line 257
    .end local v0           #localDataLine:Lpavlyukoff/m7Parts/PropFile$DataLine;
    .end local v3           #str:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 258
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public replaceLine(Ljava/lang/String;Ljava/lang/String;Lpavlyukoff/m7Parts/PropFile$FindMode;Lpavlyukoff/m7Parts/PropFile$ReplaceMode;ZZ)Z
    .locals 6
    .parameter "paramString1"
    .parameter "paramString2"
    .parameter "paramFindMode"
    .parameter "paramReplaceMode"
    .parameter "paramBoolean1"
    .parameter "paramBoolean2"

    .prologue
    const/4 v4, 0x1

    .line 263
    iget-object v5, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 264
    .local v2, localIterator:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 265
    .local v0, i:I
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 296
    if-ne v0, v4, :cond_6

    :goto_1
    return v4

    .line 267
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpavlyukoff/m7Parts/PropFile$DataLine;

    .line 268
    .local v1, localDataLine:Lpavlyukoff/m7Parts/PropFile$DataLine;
    invoke-virtual {v1}, Lpavlyukoff/m7Parts/PropFile$DataLine;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, str:Ljava/lang/String;
    if-eqz p6, :cond_2

    .line 270
    invoke-virtual {v1}, Lpavlyukoff/m7Parts/PropFile$DataLine;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 271
    :cond_2
    sget-object v5, Lpavlyukoff/m7Parts/PropFile$FindMode;->StartsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

    if-ne p3, v5, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    sget-object v5, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;->Matched:Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    if-ne p4, v5, :cond_3

    .line 274
    invoke-virtual {v1}, Lpavlyukoff/m7Parts/PropFile$DataLine;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lpavlyukoff/m7Parts/PropFile$DataLine;->setValue(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x1

    .line 277
    :cond_3
    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    .line 279
    sget-object v5, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;->Line:Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    if-ne p4, v5, :cond_4

    .line 281
    invoke-virtual {v1, p2}, Lpavlyukoff/m7Parts/PropFile$DataLine;->setValue(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x1

    .line 283
    goto :goto_0

    .line 285
    :cond_4
    sget-object v5, Lpavlyukoff/m7Parts/PropFile$FindMode;->Equals:Lpavlyukoff/m7Parts/PropFile$FindMode;

    if-ne p3, v5, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 287
    invoke-virtual {v1, p2}, Lpavlyukoff/m7Parts/PropFile$DataLine;->setValue(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    .line 289
    goto :goto_0

    .line 291
    :cond_5
    sget-object v5, Lpavlyukoff/m7Parts/PropFile$FindMode;->EqualsIgnoreCase:Lpavlyukoff/m7Parts/PropFile$FindMode;

    if-ne p3, v5, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    invoke-virtual {v1, p2}, Lpavlyukoff/m7Parts/PropFile$DataLine;->setValue(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x1

    goto :goto_0

    .line 296
    .end local v1           #localDataLine:Lpavlyukoff/m7Parts/PropFile$DataLine;
    .end local v3           #str:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public save()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lpavlyukoff/m7Parts/PropFile;->propFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpavlyukoff/m7Parts/PropFile;->saveAs(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveAs(Ljava/lang/String;)Z
    .locals 7
    .parameter "paramString"

    .prologue
    const/4 v5, 0x1

    .line 309
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, localFileWriter:Ljava/io/FileWriter;
    iget-object v4, p0, Lpavlyukoff/m7Parts/PropFile;->lines:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 313
    .local v3, localIterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 315
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 316
    const/4 v0, 0x1

    .line 327
    .end local v1           #localFileWriter:Ljava/io/FileWriter;
    .end local v3           #localIterator:Ljava/util/Iterator;
    .local v0, i:I
    :goto_1
    if-ne v0, v5, :cond_1

    move v4, v5

    :goto_2
    return v4

    .line 319
    .end local v0           #i:I
    .restart local v1       #localFileWriter:Ljava/io/FileWriter;
    .restart local v3       #localIterator:Ljava/util/Iterator;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpavlyukoff/m7Parts/PropFile$DataLine;

    invoke-virtual {v4}, Lpavlyukoff/m7Parts/PropFile$DataLine;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    .end local v1           #localFileWriter:Ljava/io/FileWriter;
    .end local v3           #localIterator:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 324
    .local v2, localIOException:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 325
    const/4 v0, 0x0

    .restart local v0       #i:I
    goto :goto_1

    .line 327
    .end local v2           #localIOException:Ljava/io/IOException;
    :cond_1
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "paramString1"
    .parameter "paramString2"

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lpavlyukoff/m7Parts/PropFile$FindMode;->StartsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

    sget-object v4, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;->Line:Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lpavlyukoff/m7Parts/PropFile;->replaceLine(Ljava/lang/String;Ljava/lang/String;Lpavlyukoff/m7Parts/PropFile$FindMode;Lpavlyukoff/m7Parts/PropFile$ReplaceMode;ZZ)Z

    move-result v0

    return v0
.end method
