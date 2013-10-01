.class Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;
.super Ljava/lang/Object;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/NinePatchTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmallCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCount:I

.field private mKey:[I

.field private mValue:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    const/16 v1, 0x10

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    .line 86
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/NinePatchTexture$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    invoke-direct {p0}, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 127
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    .line 131
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    if-ge v0, v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_1

    .line 111
    iget v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    if-lez v0, :cond_0

    .line 112
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    aget v1, v3, v0

    .line 113
    .local v1, tmpKey:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    aput v4, v3, v0

    .line 114
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    add-int/lit8 v4, v0, -0x1

    aput v1, v3, v4

    .line 116
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .line 117
    .local v2, tmpValue:Ljava/lang/Object;,"TV;"
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    .line 118
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    add-int/lit8 v4, v0, -0x1

    aput-object v2, v3, v4

    .line 120
    .end local v1           #tmpKey:I
    .end local v2           #tmpValue:Ljava/lang/Object;,"TV;"
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 123
    :goto_1
    return-object v3

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/16 v3, 0xf

    .line 92
    iget v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v0, v1, v3

    .line 94
    .local v0, old:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    aput p1, v1, v3

    .line 95
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 101
    .end local v0           #old:Ljava/lang/Object;,"TV;"
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    iget v2, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    aput p1, v1, v2

    .line 99
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    aput-object p2, v1, v2

    .line 100
    iget v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 134
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    iget v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
