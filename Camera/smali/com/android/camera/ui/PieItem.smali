.class public Lcom/android/camera/ui/PieItem;
.super Ljava/lang/Object;
.source "PieItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PieItem$OnClickListener;
    }
.end annotation


# instance fields
.field private animate:F

.field private inner:I

.field private level:I

.field private mAlpha:F

.field private mCenter:F

.field private mChangeAlphaWhenDisabled:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Lcom/android/camera/ui/PieItem$OnClickListener;

.field private mPath:Landroid/graphics/Path;

.field private mSelected:Z

.field private outer:I

.field private start:F

.field private sweep:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .parameter "drawable"
    .parameter "level"

    .prologue
    const/4 v2, 0x1

    const/high16 v1, -0x4080

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v2, p0, Lcom/android/camera/ui/PieItem;->mChangeAlphaWhenDisabled:Z

    .line 58
    iput-object p1, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    iput p2, p0, Lcom/android/camera/ui/PieItem;->level:I

    .line 60
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieItem;->setAlpha(F)V

    .line 61
    iput-boolean v2, p0, Lcom/android/camera/ui/PieItem;->mEnabled:Z

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/ui/PieItem;->getAnimationAngle()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieItem;->setAnimationAngle(F)V

    .line 63
    iput v1, p0, Lcom/android/camera/ui/PieItem;->start:F

    .line 64
    iput v1, p0, Lcom/android/camera/ui/PieItem;->mCenter:F

    .line 65
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/camera/ui/PieItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PieItem;->mItems:Ljava/util/List;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    return-void
.end method

.method public getAnimationAngle()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/camera/ui/PieItem;->animate:F

    return v0
.end method

.method public getCenter()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/camera/ui/PieItem;->mCenter:F

    return v0
.end method

.method public getInnerRadius()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/ui/PieItem;->inner:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/PieItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getOuterRadius()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/camera/ui/PieItem;->outer:I

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getStartAngle()F
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/android/camera/ui/PieItem;->start:F

    iget v1, p0, Lcom/android/camera/ui/PieItem;->animate:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getSweep()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/camera/ui/PieItem;->sweep:F

    return v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/camera/ui/PieItem;->mEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/ui/PieItem;->mSelected:Z

    return v0
.end method

.method public performClick()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mOnClickListener:Lcom/android/camera/ui/PieItem$OnClickListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mOnClickListener:Lcom/android/camera/ui/PieItem$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/camera/ui/PieItem$OnClickListener;->onClick(Lcom/android/camera/ui/PieItem;)V

    .line 178
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/ui/PieItem;->mAlpha:F

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 97
    return-void
.end method

.method public setAnimationAngle(F)V
    .locals 0
    .parameter "a"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/camera/ui/PieItem;->animate:F

    .line 101
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/camera/ui/PieItem;->mEnabled:Z

    .line 109
    iget-boolean v0, p0, Lcom/android/camera/ui/PieItem;->mChangeAlphaWhenDisabled:Z

    if-eqz v0, :cond_0

    .line 110
    iget-boolean v0, p0, Lcom/android/camera/ui/PieItem;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 111
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieItem;->setAlpha(F)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const v0, 0x3e99999a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieItem;->setAlpha(F)V

    goto :goto_0
.end method

.method public setFixedSlice(FF)V
    .locals 0
    .parameter "center"
    .parameter "sweep"

    .prologue
    .line 142
    iput p1, p0, Lcom/android/camera/ui/PieItem;->mCenter:F

    .line 143
    iput p2, p0, Lcom/android/camera/ui/PieItem;->sweep:F

    .line 144
    return-void
.end method

.method public setGeometry(FFII)V
    .locals 0
    .parameter "st"
    .parameter "sw"
    .parameter "inside"
    .parameter "outside"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/camera/ui/PieItem;->start:F

    .line 136
    iput p2, p0, Lcom/android/camera/ui/PieItem;->sweep:F

    .line 137
    iput p3, p0, Lcom/android/camera/ui/PieItem;->inner:I

    .line 138
    iput p4, p0, Lcom/android/camera/ui/PieItem;->outer:I

    .line 139
    return-void
.end method

.method public setImageResource(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 198
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 199
    iput-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    iget v1, p0, Lcom/android/camera/ui/PieItem;->mAlpha:F

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PieItem;->setAlpha(F)V

    .line 201
    return-void
.end method

.method public setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/camera/ui/PieItem;->mOnClickListener:Lcom/android/camera/ui/PieItem$OnClickListener;

    .line 172
    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/ui/PieItem;->mPath:Landroid/graphics/Path;

    .line 84
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "s"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/camera/ui/PieItem;->mSelected:Z

    .line 124
    return-void
.end method
