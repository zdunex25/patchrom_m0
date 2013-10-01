.class Lcom/android/gallery3d/ui/CropView$FaceHighlightView;
.super Lcom/android/gallery3d/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceHighlightView"
.end annotation


# instance fields
.field private mFaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedFaceIndex:I

.field private mRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/ui/CropView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/CropView;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mFaces:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mRect:Landroid/graphics/RectF;

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/CropView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;-><init>(Lcom/android/gallery3d/ui/CropView;)V

    return-void
.end method

.method private getFaceIndexByPosition(FF)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mFaces:Ljava/util/ArrayList;

    .line 250
    .local v0, faces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 251
    iget-object v4, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v4, v6}, Lcom/android/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 252
    .local v3, r:Landroid/graphics/RectF;
    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    .end local v1           #i:I
    .end local v3           #r:Landroid/graphics/RectF;
    :goto_1
    return v1

    .line 250
    .restart local v1       #i:I
    .restart local v3       #r:Landroid/graphics/RectF;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v3           #r:Landroid/graphics/RectF;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private renderFace(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Z)V
    .locals 9
    .parameter "canvas"
    .parameter "face"
    .parameter "pressed"

    .prologue
    const/4 v1, 0x1

    const/16 v8, 0x1e00

    .line 210
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v6

    .line 211
    .local v6, gl:Ljavax/microedition/khronos/opengles/GL11;
    if-eqz p3, :cond_0

    .line 212
    const/16 v0, 0xb90

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 213
    const/16 v0, 0x400

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 214
    const/16 v0, 0x1e01

    invoke-interface {v6, v8, v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 215
    const/16 v0, 0x207

    invoke-interface {v6, v0, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, v1}, Lcom/android/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    .line 219
    .local v7, r:Landroid/graphics/RectF;
    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 220
    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$300(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 222
    if-eqz p3, :cond_1

    .line 223
    invoke-interface {v6, v8, v8, v8}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 225
    :cond_1
    return-void
.end method

.method private setPressedFace(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 243
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    if-ne v0, p1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    .line 245
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public addFace(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "faceRect"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mFaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->invalidate()V

    .line 207
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 260
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 261
    .local v2, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    return v5

    .line 264
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->getFaceIndexByPosition(FF)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->setPressedFace(I)V

    goto :goto_0

    .line 269
    :pswitch_1
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    .line 270
    .local v0, index:I
    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->setPressedFace(I)V

    .line 271
    if-eq v0, v4, :cond_0

    .line 272
    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;
    invoke-static {v3}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v4

    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mFaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setRectangle(Landroid/graphics/RectF;)V

    .line 273
    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;
    invoke-static {v3}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    .line 274
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->setVisibility(I)V

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 229
    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mFaces:Ljava/util/ArrayList;

    .line 230
    .local v6, faces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    const/4 v8, 0x0

    .local v8, i:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, n:I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 231
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    if-ne v8, v2, :cond_0

    move v2, v3

    :goto_1
    invoke-direct {p0, p1, v0, v2}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->renderFace(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Z)V

    .line 230
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 231
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 234
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v7

    .line 235
    .local v7, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 236
    const/16 v0, 0x205

    invoke-interface {v7, v0, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 237
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/high16 v5, 0x6600

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 238
    const/16 v0, 0xb90

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 240
    :cond_2
    return-void
.end method
