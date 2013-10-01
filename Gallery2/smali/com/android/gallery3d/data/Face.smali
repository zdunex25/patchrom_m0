.class public Lcom/android/gallery3d/data/Face;
.super Ljava/lang/Object;
.source "Face.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/gallery3d/data/Face;",
        ">;"
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mPersonId:Ljava/lang/String;

.field private mPosition:Landroid/graphics/Rect;


# virtual methods
.method public compareTo(Lcom/android/gallery3d/data/Face;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/data/Face;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/gallery3d/data/Face;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/android/gallery3d/data/Face;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/Face;->compareTo(Lcom/android/gallery3d/data/Face;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 54
    instance-of v1, p1, Lcom/android/gallery3d/data/Face;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/android/gallery3d/data/Face;

    .line 56
    .local v0, face:Lcom/android/gallery3d/data/Face;
    iget-object v1, p0, Lcom/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 58
    .end local v0           #face:Lcom/android/gallery3d/data/Face;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/data/Face;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    return-object v0
.end method
