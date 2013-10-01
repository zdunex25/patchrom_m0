.class public abstract Lcom/android/gallery3d/anim/CanvasAnimation;
.super Lcom/android/gallery3d/anim/Animation;
.source "CanvasAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/android/gallery3d/ui/GLCanvas;)V
.end method

.method public abstract getCanvasSaveFlags()I
.end method
