.class public Lcom/sec/android/glview/TwGLIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLIndicator.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 0
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 42
    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 49
    :cond_0
    iput-object p0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, padding:I
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 55
    .local v2, v:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 57
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_0

    .line 61
    .end local v2           #v:Lcom/sec/android/glview/TwGLView;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLIndicator;->getWidth()F

    move-result v3

    int-to-float v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 62
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 64
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 65
    return-void
.end method

.method public setVisibility(Lcom/sec/android/glview/TwGLView;I)V
    .locals 5
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, padding:I
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 79
    .local v2, v:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 81
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLIndicator;->getWidth()F

    move-result v3

    int-to-float v4, v1

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_1

    .line 85
    .end local v2           #v:Lcom/sec/android/glview/TwGLView;
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 86
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    goto :goto_0
.end method
