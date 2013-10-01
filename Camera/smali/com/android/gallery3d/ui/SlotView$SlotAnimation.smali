.class public abstract Lcom/android/gallery3d/ui/SlotView$SlotAnimation;
.super Lcom/android/gallery3d/anim/Animation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SlotAnimation"
.end annotation


# instance fields
.field protected mProgress:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->mProgress:F

    .line 334
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4080

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 335
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->setDuration(I)V

    .line 336
    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/android/gallery3d/ui/GLCanvas;ILandroid/graphics/Rect;)V
.end method

.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 340
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->mProgress:F

    .line 341
    return-void
.end method
