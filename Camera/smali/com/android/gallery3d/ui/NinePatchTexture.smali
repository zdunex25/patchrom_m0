.class public Lcom/android/gallery3d/ui/NinePatchTexture;
.super Lcom/android/gallery3d/ui/ResourceTexture;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/NinePatchTexture$1;,
        Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;
    }
.end annotation


# instance fields
.field private mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

.field private mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache",
            "<",
            "Lcom/android/gallery3d/ui/NinePatchInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;-><init>(Lcom/android/gallery3d/ui/NinePatchTexture$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;

    .line 46
    return-void
.end method

.method private findInstance(Lcom/android/gallery3d/ui/GLCanvas;II)Lcom/android/gallery3d/ui/NinePatchInstance;
    .locals 4
    .parameter "canvas"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 143
    move v1, p2

    .line 144
    .local v1, key:I
    shl-int/lit8 v3, v1, 0x10

    or-int v1, v3, p3

    .line 145
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/NinePatchInstance;

    .line 147
    .local v0, instance:Lcom/android/gallery3d/ui/NinePatchInstance;
    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchInstance;

    .end local v0           #instance:Lcom/android/gallery3d/ui/NinePatchInstance;
    invoke-direct {v0, p0, p2, p3}, Lcom/android/gallery3d/ui/NinePatchInstance;-><init>(Lcom/android/gallery3d/ui/NinePatchTexture;II)V

    .line 149
    .restart local v0       #instance:Lcom/android/gallery3d/ui/NinePatchInstance;
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v3, v1, v0}, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/NinePatchInstance;

    .line 150
    .local v2, removed:Lcom/android/gallery3d/ui/NinePatchInstance;
    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/NinePatchInstance;->recycle(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 155
    .end local v2           #removed:Lcom/android/gallery3d/ui/NinePatchInstance;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/NinePatchTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->clear()V

    .line 164
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 165
    invoke-direct {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/NinePatchTexture;->findInstance(Lcom/android/gallery3d/ui/GLCanvas;II)Lcom/android/gallery3d/ui/NinePatchInstance;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/gallery3d/ui/NinePatchInstance;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/NinePatchTexture;II)V

    .line 167
    :cond_1
    return-void
.end method

.method public getNinePatchChunk()Lcom/android/gallery3d/ui/NinePatchChunk;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    iget-object v0, v0, Lcom/android/gallery3d/ui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 50
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 65
    :cond_0
    return-object v0

    .line 52
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 53
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 54
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mResId:I

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/ui/NinePatchTexture;->setSize(II)V

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 59
    .local v1, chunkData:[B
    if-nez v1, :cond_2

    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    .line 62
    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid nine-patch image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mResId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/NinePatchChunk;->deserialize([B)Lcom/android/gallery3d/ui/NinePatchChunk;

    move-result-object v3

    goto :goto_0
.end method

.method public recycle()V
    .locals 5

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/gallery3d/ui/ResourceTexture;->recycle()V

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    .line 173
    .local v0, canvas:Lcom/android/gallery3d/ui/GLCanvas;
    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->size()I

    move-result v3

    .line 175
    .local v3, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 176
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/NinePatchInstance;

    .line 177
    .local v2, instance:Lcom/android/gallery3d/ui/NinePatchInstance;
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/NinePatchInstance;->recycle(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    .end local v2           #instance:Lcom/android/gallery3d/ui/NinePatchInstance;
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->clear()V

    goto :goto_0
.end method
