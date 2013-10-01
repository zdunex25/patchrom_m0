.class public Lcom/googlecode/mp4parser/util/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static component:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/googlecode/mp4parser/util/Path;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/util/Path;->$assertionsDisabled:Z

    .line 34
    const-string v0, "(....|\\.\\.)(\\[(.*)\\])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/util/Path;->component:Ljava/util/regex/Pattern;

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getPath(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .parameter "box"
    .parameter "path"

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, all:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    goto :goto_0
.end method

.method public static getPaths(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .parameter "box"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coremedia/iso/boxes/Box;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x2f

    const/4 v13, 0x1

    .line 59
    const-string v11, "/"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 60
    move-object v6, p0

    .line 61
    .local v6, isoFile:Lcom/coremedia/iso/boxes/Box;
    :goto_0
    invoke-interface {v6}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 62
    invoke-interface {v6}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v6

    goto :goto_0

    .line 64
    :cond_0
    sget-boolean v11, Lcom/googlecode/mp4parser/util/Path;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    instance-of v11, v6, Lcom/coremedia/iso/IsoFile;

    if-nez v11, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has no parent"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11

    .line 65
    :cond_1
    invoke-virtual {p1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 101
    .end local v6           #isoFile:Lcom/coremedia/iso/boxes/Box;
    .end local p0
    :cond_2
    :goto_1
    return-object v1

    .line 66
    .restart local p0
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 67
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 71
    :cond_4
    const-string v11, "/"

    invoke-virtual {p1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 72
    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, later:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, now:Ljava/lang/String;
    :goto_2
    sget-object v11, Lcom/googlecode/mp4parser/util/Path;->component:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 80
    .local v8, m:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 81
    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, type:Ljava/lang/String;
    const-string v11, ".."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 83
    invoke-interface {p0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 75
    .end local v7           #later:Ljava/lang/String;
    .end local v8           #m:Ljava/util/regex/Matcher;
    .end local v9           #now:Ljava/lang/String;
    .end local v10           #type:Ljava/lang/String;
    :cond_5
    move-object v9, p1

    .line 76
    .restart local v9       #now:Ljava/lang/String;
    const-string v7, ""

    .restart local v7       #later:Ljava/lang/String;
    goto :goto_2

    .line 85
    .restart local v8       #m:Ljava/util/regex/Matcher;
    .restart local v10       #type:Ljava/lang/String;
    :cond_6
    const/4 v4, -0x1

    .line 86
    .local v4, index:I
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 88
    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, indexString:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 91
    .end local v5           #indexString:Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 92
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const/4 v2, 0x0

    .line 93
    .local v2, currentIndex:I
    check-cast p0, Lcom/coremedia/iso/boxes/ContainerBox;

    .end local p0
    invoke-interface {p0}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 94
    .local v0, box1:Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 95
    const/4 v11, -0x1

    if-eq v4, v11, :cond_9

    if-ne v4, v2, :cond_a

    .line 96
    :cond_9
    invoke-static {v0, v7}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 104
    .end local v0           #box1:Lcom/coremedia/iso/boxes/Box;
    .end local v1           #children:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v2           #currentIndex:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    .end local v10           #type:Ljava/lang/String;
    .restart local p0
    :cond_b
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is invalid path."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
