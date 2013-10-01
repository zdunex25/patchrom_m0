.class public Lcom/android/gallery3d/data/PathMatcher;
.super Ljava/lang/Object;
.source "PathMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/PathMatcher$1;,
        Lcom/android/gallery3d/data/PathMatcher$Node;
    }
.end annotation


# instance fields
.field private mRoot:Lcom/android/gallery3d/data/PathMatcher$Node;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher$Node;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/PathMatcher$Node;-><init>(Lcom/android/gallery3d/data/PathMatcher$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PathMatcher;->mRoot:Lcom/android/gallery3d/data/PathMatcher$Node;

    .line 29
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher$Node;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/PathMatcher$Node;-><init>(Lcom/android/gallery3d/data/PathMatcher$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PathMatcher;->mRoot:Lcom/android/gallery3d/data/PathMatcher$Node;

    .line 30
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 4
    .parameter "pattern"
    .parameter "kind"

    .prologue
    .line 33
    invoke-static {p1}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, segments:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/PathMatcher;->mRoot:Lcom/android/gallery3d/data/PathMatcher$Node;

    .line 35
    .local v0, current:Lcom/android/gallery3d/data/PathMatcher$Node;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 36
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/PathMatcher$Node;->addChild(Ljava/lang/String;)Lcom/android/gallery3d/data/PathMatcher$Node;

    move-result-object v0

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/data/PathMatcher$Node;->setKind(I)V

    .line 39
    return-void
.end method

.method public getIntVar(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVar(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public match(Lcom/android/gallery3d/data/Path;)I
    .locals 6
    .parameter "path"

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, segments:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/data/PathMatcher;->mRoot:Lcom/android/gallery3d/data/PathMatcher$Node;

    .line 45
    .local v0, current:Lcom/android/gallery3d/data/PathMatcher$Node;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 46
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/PathMatcher$Node;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/PathMatcher$Node;

    move-result-object v2

    .line 47
    .local v2, next:Lcom/android/gallery3d/data/PathMatcher$Node;
    if-nez v2, :cond_0

    .line 48
    const-string v4, "*"

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/PathMatcher$Node;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/PathMatcher$Node;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    iget-object v4, p0, Lcom/android/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    move-object v0, v2

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v4, -0x1

    .line 57
    .end local v2           #next:Lcom/android/gallery3d/data/PathMatcher$Node;
    :goto_1
    return v4

    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/data/PathMatcher$Node;->getKind()I

    move-result v4

    goto :goto_1
.end method
