.class public Lcom/android/gallery3d/ui/SlotView$RisingAnimation;
.super Lcom/android/gallery3d/ui/SlotView$SlotAnimation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RisingAnimation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/gallery3d/ui/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "slotIndex"
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    .line 351
    const/high16 v0, 0x4300

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$RisingAnimation;->mProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-interface {p1, v3, v3, v0}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 352
    return-void
.end method
