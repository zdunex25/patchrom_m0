.class Lcom/android/gallery3d/ui/EdgeAnimation;
.super Ljava/lang/Object;
.source "Paper.java"


# instance fields
.field private mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J

.field private mState:I

.field private mValue:F

.field private mValueFinish:F

.field private mValueStart:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    .line 120
    return-void
.end method

.method private now()J
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private startAnimation(FFJI)V
    .locals 2
    .parameter "start"
    .parameter "finish"
    .parameter "duration"
    .parameter "newState"

    .prologue
    .line 124
    iput p1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValueStart:F

    .line 125
    iput p2, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValueFinish:F

    .line 126
    iput-wide p3, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mDuration:J

    .line 127
    invoke-direct {p0}, Lcom/android/gallery3d/ui/EdgeAnimation;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mStartTime:J

    .line 128
    iput p5, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    .line 129
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    return v0
.end method

.method public onAbsorb(F)V
    .locals 6
    .parameter "velocity"

    .prologue
    .line 146
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const v1, 0x3dcccccd

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/high16 v1, -0x4080

    const/high16 v3, 0x3f80

    invoke-static {v0, v1, v3}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    .line 148
    .local v2, finish:F
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const-wide/16 v3, 0xc8

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    .line 149
    return-void
.end method

.method public onPull(F)V
    .locals 3
    .parameter "deltaDistance"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    add-float/2addr v0, p1

    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    goto :goto_0
.end method

.method public onRelease()V
    .locals 6

    .prologue
    .line 141
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    goto :goto_0
.end method

.method public update()Z
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 152
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    if-nez v1, :cond_0

    .line 173
    :goto_0
    return v0

    .line 153
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    if-ne v1, v8, :cond_1

    move v0, v8

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/EdgeAnimation;->now()J

    move-result-wide v3

    iget-wide v9, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mStartTime:J

    sub-long/2addr v3, v9

    long-to-float v1, v3

    iget-wide v3, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mDuration:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v7

    .line 157
    .local v7, t:F
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    move v6, v7

    .line 160
    .local v6, interp:F
    :goto_1
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValueStart:F

    iget v3, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValueFinish:F

    iget v4, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValueStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iput v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    .line 162
    cmpl-float v1, v7, v5

    if-ltz v1, :cond_2

    .line 163
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_2
    move v0, v8

    .line 173
    goto :goto_0

    .line 157
    .end local v6           #interp:F
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    goto :goto_1

    .line 165
    .restart local v6       #interp:F
    :pswitch_0
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    goto :goto_2

    .line 168
    :pswitch_1
    iput v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    goto :goto_2

    .line 163
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
