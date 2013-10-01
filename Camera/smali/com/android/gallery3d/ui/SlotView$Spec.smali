.class public Lcom/android/gallery3d/ui/SlotView$Spec;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# instance fields
.field public rowsLand:I

.field public rowsPort:I

.field public slotGap:I

.field public slotHeight:I

.field public slotHeightAdditional:I

.field public slotWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    .line 386
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeightAdditional:I

    .line 389
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 390
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsPort:I

    .line 391
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    return-void
.end method
