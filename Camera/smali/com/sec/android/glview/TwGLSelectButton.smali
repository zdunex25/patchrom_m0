.class public Lcom/sec/android/glview/TwGLSelectButton;
.super Lcom/sec/android/glview/TwGLButton;
.source "TwGLSelectButton.java"


# instance fields
.field protected mSelected:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFII)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "offId"
    .parameter "onId"

    .prologue
    const/4 v6, 0x0

    .line 56
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 33
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIII)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "offId"
    .parameter "onId"
    .parameter "highlightId"

    .prologue
    const/4 v6, 0x0

    .line 70
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 33
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "npHighlightId"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;II)V
    .locals 6
    .parameter "glContext"
    .parameter "offId"
    .parameter "onId"

    .prologue
    const/4 v4, 0x0

    .line 43
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;IIII)V

    .line 33
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    .line 44
    return-void
.end method


# virtual methods
.method public getSelected()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    return v0
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 117
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSelectButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSelectButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 125
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 126
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSelectButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto :goto_0

    .line 120
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    goto :goto_1

    .line 131
    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    if-eq v0, p1, :cond_0

    .line 95
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    .line 97
    :cond_0
    return-void
.end method
