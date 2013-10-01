.class public Lcom/android/gallery3d/filtershow/ui/ControlPoint;
.super Ljava/lang/Object;
.source "ControlPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "px"
    .parameter "py"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    .line 25
    iput p2, p0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)V
    .locals 1
    .parameter "point"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget v0, p1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    .line 30
    iget v0, p1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    .line 31
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 39
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 40
    .local v0, p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 41
    const/4 v1, 0x1

    .line 45
    :goto_0
    return v1

    .line 42
    :cond_0
    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 43
    const/4 v1, -0x1

    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
