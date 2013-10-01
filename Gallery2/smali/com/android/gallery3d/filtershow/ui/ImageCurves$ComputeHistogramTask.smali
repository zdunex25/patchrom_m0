.class Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;
.super Landroid/os/AsyncTask;
.source "ImageCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/ui/ImageCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComputeHistogramTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/ui/ImageCurves;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/ui/ImageCurves;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;->this$0:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 242
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;->doInBackground([Landroid/graphics/Bitmap;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/graphics/Bitmap;)[I
    .locals 15
    .parameter "params"

    .prologue
    .line 245
    const/16 v2, 0x300

    new-array v10, v2, [I

    .line 246
    .local v10, histo:[I
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 247
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 248
    .local v3, w:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 249
    .local v7, h:I
    mul-int v2, v3, v7

    new-array v1, v2, [I

    .line 250
    .local v1, pixels:[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 251
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v3, :cond_1

    .line 252
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    if-ge v13, v7, :cond_0

    .line 253
    mul-int v2, v13, v3

    add-int v12, v2, v11

    .line 254
    .local v12, index:I
    aget v2, v1, v12

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 255
    .local v14, r:I
    aget v2, v1, v12

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 256
    .local v9, g:I
    aget v2, v1, v12

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 257
    .local v8, b:I
    aget v2, v10, v14

    add-int/lit8 v2, v2, 0x1

    aput v2, v10, v14

    .line 258
    add-int/lit16 v2, v9, 0x100

    aget v4, v10, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v10, v2

    .line 259
    add-int/lit16 v2, v8, 0x200

    aget v4, v10, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v10, v2

    .line 252
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 251
    .end local v8           #b:I
    .end local v9           #g:I
    .end local v12           #index:I
    .end local v14           #r:I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 262
    .end local v13           #j:I
    :cond_1
    return-object v10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 242
    check-cast p1, [I

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 4
    .parameter "result"

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;->this$0:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->redHistogram:[I

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;->this$0:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->greenHistogram:[I

    invoke-static {p1, v3, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    const/16 v0, 0x200

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;->this$0:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->blueHistogram:[I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;->this$0:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->invalidate()V

    .line 271
    return-void
.end method
