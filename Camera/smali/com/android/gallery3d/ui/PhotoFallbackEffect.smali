.class public Lcom/android/gallery3d/ui/PhotoFallbackEffect;
.super Lcom/android/gallery3d/anim/Animation;
.source "PhotoFallbackEffect.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;,
        Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    }
.end annotation


# static fields
.field private static final ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mProgress:F

.field private mSource:Landroid/graphics/RectF;

.field private mTarget:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    .line 62
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setDuration(I)V

    .line 63
    sget-object v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 64
    return-void
.end method

.method private drawEntry(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;)V
    .locals 17
    .parameter "canvas"
    .parameter "entry"

    .prologue
    .line 90
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/RawTexture;->isLoaded()Z

    move-result v12

    if-nez v12, :cond_0

    .line 152
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v11

    .line 93
    .local v11, w:I
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v7

    .line 95
    .local v7, h:I
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 96
    .local v9, s:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 100
    .local v5, d:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mProgress:F

    .line 102
    .local v8, p:F
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    div-float v6, v12, v13

    .line 103
    .local v6, fullScale:F
    mul-float v12, v6, v8

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v8

    mul-float/2addr v13, v14

    add-float v10, v12, v13

    .line 105
    .local v10, scale:F
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v8

    mul-float/2addr v13, v14

    add-float v3, v12, v13

    .line 106
    .local v3, cx:F
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v8

    mul-float/2addr v13, v14

    add-float v4, v12, v13

    .line 108
    .local v4, cy:F
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float v1, v12, v10

    .line 109
    .local v1, ch:F
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float v2, v12, v10

    .line 111
    .local v2, cw:F
    if-le v11, v7, :cond_1

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v1, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x4000

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x4000

    div-float v15, v1, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x4000

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    sub-int v13, v11, v7

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    const/4 v14, 0x0

    add-int v15, v11, v7

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 115
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 117
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 118
    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x4000

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x4000

    div-float v15, v1, v15

    sub-float v15, v3, v15

    const/high16 v16, 0x4000

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    sub-int v15, v11, v7

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v1, v13

    add-float/2addr v13, v3

    const/high16 v14, 0x4000

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x4000

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x4000

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    add-int v13, v11, v7

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    const/4 v14, 0x0

    int-to-float v15, v11

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 128
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 130
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 133
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x4000

    div-float v14, v2, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x4000

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x4000

    div-float v16, v2, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    sub-int v14, v7, v11

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    int-to-float v15, v11

    add-int v16, v7, v11

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 137
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 138
    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x4000

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x4000

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x4000

    div-float v16, v2, v16

    sub-float v16, v4, v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v15, v11

    sub-int v16, v7, v11

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 143
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x4000

    div-float v14, v2, v14

    add-float/2addr v14, v4

    const/high16 v15, 0x4000

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x4000

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    add-int v14, v11, v7

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    int-to-float v15, v11

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 148
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 150
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    goto/16 :goto_0
.end method


# virtual methods
.method public acceptSlot(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 171
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 172
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 173
    .local v0, entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget v3, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    if-ne v3, p1, :cond_0

    const/4 v3, 0x0

    .line 175
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :goto_1
    return v3

    .line 171
    .restart local v0       #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 6
    .parameter "canvas"

    .prologue
    .line 79
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->calculate(J)Z

    move-result v2

    .line 80
    .local v2, more:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 81
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 82
    .local v0, entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget v4, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    if-gez v4, :cond_0

    .line 80
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    iget v5, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    invoke-interface {v4, v5}, Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->drawEntry(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;)V

    goto :goto_1

    .line 86
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_1
    return v2
.end method

.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 156
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mProgress:F

    .line 157
    return-void
.end method

.method public setPositionProvider(Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 161
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    if-eqz v3, :cond_0

    .line 162
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 163
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 164
    .local v0, entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->path:Lcom/android/gallery3d/data/Path;

    invoke-interface {v3, v4}, Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;->getItemIndex(Lcom/android/gallery3d/data/Path;)I

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_0
    return-void
.end method
