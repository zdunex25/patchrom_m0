.class public Lcom/android/gallery3d/app/TransitionStore;
.super Ljava/lang/Object;
.source "TransitionStore.java"


# instance fields
.field private mStorage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 45
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, valueIfNull:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/android/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, value:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_0

    .end local p2           #valueIfNull:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object p2

    .restart local p2       #valueIfNull:Ljava/lang/Object;,"TT;"
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public putIfNotPresent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, valueIfNull:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/android/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method
