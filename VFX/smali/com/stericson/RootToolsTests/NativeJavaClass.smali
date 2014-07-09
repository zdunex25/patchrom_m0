.class public Lcom/stericson/RootToolsTests/NativeJavaClass;
.super Ljava/lang/Object;
.source "NativeJavaClass.java"


# annotations
.annotation build Lcom/stericson/RootTools/containers/RootClass$Candidate;
.end annotation


# direct methods
.method public constructor <init>(Lcom/stericson/RootTools/containers/RootClass$RootArgs;)V
    .locals 14
    .parameter "args"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "NativeJavaClass says: oh hi there."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    const-string v10, "/data/data/com.android.browser/cache"

    .line 16
    .local v10, p:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 18
    .local v6, fl:[Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 19
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "Look at all the stuff in your browser\'s cache:"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v1, v7

    .line 21
    .local v0, af:Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 23
    .end local v0           #af:Ljava/lang/String;
    :cond_0
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "Leaving my mark for posterity..."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/roottools_was_here"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v4, f2:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 27
    .local v5, filewriter:Ljava/io/FileWriter;
    new-instance v9, Ljava/io/BufferedWriter;

    invoke-direct {v9, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 28
    .local v9, out:Ljava/io/BufferedWriter;
    const-string v11, "This is just a file created using RootTool\'s Sanity check tools..\n"

    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 30
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "Done!"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #f2:Ljava/io/File;
    .end local v5           #filewriter:Ljava/io/FileWriter;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 31
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #f2:Ljava/io/File;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :catch_0
    move-exception v2

    .line 32
    .local v2, e:Ljava/io/IOException;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "...and I failed miserably."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
