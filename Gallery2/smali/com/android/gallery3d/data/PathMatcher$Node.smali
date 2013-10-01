.class Lcom/android/gallery3d/data/PathMatcher$Node;
.super Ljava/lang/Object;
.source "PathMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/PathMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field private mKind:I

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/PathMatcher$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/PathMatcher$Node;->mKind:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/PathMatcher$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/data/PathMatcher$Node;-><init>()V

    return-void
.end method


# virtual methods
.method addChild(Ljava/lang/String;)Lcom/android/gallery3d/data/PathMatcher$Node;
    .locals 3
    .parameter "segment"

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    .line 84
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher$Node;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher$Node;-><init>()V

    .line 85
    .local v0, n:Lcom/android/gallery3d/data/PathMatcher$Node;
    iget-object v2, p0, Lcom/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 86
    .end local v0           #n:Lcom/android/gallery3d/data/PathMatcher$Node;
    :goto_0
    return-object v1

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/PathMatcher$Node;

    .line 81
    .local v1, node:Lcom/android/gallery3d/data/PathMatcher$Node;
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/PathMatcher$Node;
    .locals 1
    .parameter "segment"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/PathMatcher$Node;

    goto :goto_0
.end method

.method getKind()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/gallery3d/data/PathMatcher$Node;->mKind:I

    return v0
.end method

.method setKind(I)V
    .locals 0
    .parameter "kind"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/gallery3d/data/PathMatcher$Node;->mKind:I

    .line 96
    return-void
.end method
