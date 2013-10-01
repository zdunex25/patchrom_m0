.class public Lcom/android/camera/ui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mChild:Landroid/view/View;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    .line 48
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotateLayout;->setBackgroundResource(I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 105
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v2, :cond_0

    .line 106
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 129
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->getMeasuredWidth()I

    move-result v1

    .line 110
    .local v1, w:I
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->getMeasuredHeight()I

    move-result v0

    .line 111
    .local v0, h:I
    iget v2, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 125
    :goto_1
    iget v2, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 126
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 113
    :sswitch_0
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 116
    :sswitch_1
    int-to-float v2, v0

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 119
    :sswitch_2
    int-to-float v2, v1

    int-to-float v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 122
    :sswitch_3
    int-to-float v2, v1

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 80
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->getMeasuredWidth()I

    move-result v1

    .line 82
    .local v1, w:I
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->getMeasuredHeight()I

    move-result v0

    .line 83
    .local v0, h:I
    iget v2, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 98
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v2}, Lcom/android/gallery3d/util/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 100
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 85
    .restart local v0       #h:I
    .restart local v1       #w:I
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 88
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 91
    :sswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 94
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .parameter "location"
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 194
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 201
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    .line 55
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 59
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 64
    sub-int v1, p4, p2

    .line 65
    .local v1, width:I
    sub-int v0, p5, p3

    .line 66
    .local v0, height:I
    iget v2, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 69
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 73
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthSpec"
    .parameter "heightSpec"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 134
    const/4 v1, 0x0

    .local v1, w:I
    const/4 v0, 0x0

    .line 135
    .local v0, h:I
    iget v2, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 149
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/RotateLayout;->setMeasuredDimension(II)V

    .line 151
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v2, :cond_0

    .line 152
    iget v2, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 170
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 172
    :cond_0
    return-void

    .line 138
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 139
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 140
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 141
    goto :goto_0

    .line 144
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 145
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 146
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 154
    :sswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 155
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 158
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 159
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 162
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 163
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 166
    :sswitch_5
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 167
    iget-object v2, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 152
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 182
    rem-int/lit16 p1, p1, 0x168

    .line 183
    iget v0, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method
