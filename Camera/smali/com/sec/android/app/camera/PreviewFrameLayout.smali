.class public Lcom/sec/android/app/camera/PreviewFrameLayout;
.super Landroid/view/SurfaceView;
.source "PreviewFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewFrameLayout"


# instance fields
.field private mAspectRatio:D

.field private mHeight:I

.field private mHorizontalTileSize:I

.field private mVerticalTileSize:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 32
    const-wide v0, 0x3ff5555555555555L

    iput-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 34
    iput v3, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHorizontalTileSize:I

    .line 35
    iput v3, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mVerticalTileSize:I

    .line 37
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    .line 38
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-wide v0, 0x3ff5555555555555L

    iput-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 34
    iput v3, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHorizontalTileSize:I

    .line 35
    iput v3, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mVerticalTileSize:I

    .line 37
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    .line 38
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-wide v0, 0x3ff5555555555555L

    iput-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 34
    iput v3, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHorizontalTileSize:I

    .line 35
    iput v3, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mVerticalTileSize:I

    .line 37
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    .line 38
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    .line 50
    return-void
.end method

.method private roundUpToTile(III)I
    .locals 1
    .parameter "dimension"
    .parameter "tileSize"
    .parameter "maxDimension"

    .prologue
    .line 119
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    mul-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCurAspectRatio()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    return-wide v0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 88
    .local v4, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 90
    .local v2, heightSpecSize:I
    move v3, v4

    .line 91
    .local v3, width:I
    move v1, v2

    .line 93
    .local v1, height:I
    if-lez v3, :cond_3

    if-lez v1, :cond_3

    .line 94
    iget v5, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    if-eqz v5, :cond_0

    .line 95
    iget v5, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setMeasuredDimension(II)V

    .line 116
    :goto_0
    return-void

    .line 99
    :cond_0
    int-to-float v5, v3

    int-to-float v6, v1

    div-float v0, v5, v6

    .line 100
    .local v0, defaultRatio:F
    float-to-double v5, v0

    iget-wide v7, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 102
    int-to-double v5, v3

    iget-wide v7, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v5, v7

    double-to-int v1, v5

    .line 106
    :cond_1
    :goto_1
    iget v5, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHorizontalTileSize:I

    invoke-direct {p0, v3, v5, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->roundUpToTile(III)I

    move-result v3

    .line 108
    iget v5, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mVerticalTileSize:I

    invoke-direct {p0, v1, v5, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->roundUpToTile(III)I

    move-result v1

    .line 111
    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setMeasuredDimension(II)V

    goto :goto_0

    .line 103
    :cond_2
    float-to-double v5, v0

    iget-wide v7, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    .line 104
    int-to-double v5, v1

    iget-wide v7, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v5, v7

    double-to-int v3, v5

    goto :goto_1

    .line 115
    .end local v0           #defaultRatio:F
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_0
.end method

.method public resetSize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    .line 79
    iput v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    .line 80
    return-void
.end method

.method public setAspectRatio(D)Z
    .locals 3
    .parameter "aspectRatio"

    .prologue
    .line 53
    const-string v0, "PreviewFrameLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->resetSize()V

    .line 56
    iget-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    .line 57
    iput-wide p1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->requestLayout()V

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->invalidate()V

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)Z
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 66
    const-string v0, "PreviewFrameLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    if-eq v0, p2, :cond_1

    .line 68
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    .line 69
    iput p2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->requestLayout()V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->invalidate()V

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
