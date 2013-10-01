.class public Lcom/android/server/wm/MagnificationSpec;
.super Ljava/lang/Object;
.source "MagnificationSpec.java"


# instance fields
.field public mOffsetX:F

.field public mOffsetY:F

.field public mScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    return-void
.end method


# virtual methods
.method public initialize(FFF)V
    .locals 0
    .parameter "scale"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 25
    iput p1, p0, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    .line 26
    iput p2, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetX:F

    .line 27
    iput p3, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    .line 28
    return-void
.end method

.method public isNop()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget v0, p0, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "<scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, ",offsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v1, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ",offsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v1, p0, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
