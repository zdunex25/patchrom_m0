.class Lcom/android/gallery3d/app/TrimControllerOverlay$1;
.super Ljava/lang/Object;
.source "TrimControllerOverlay.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/TrimControllerOverlay;->showPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/TrimControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/TrimControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/gallery3d/app/TrimControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/TrimControllerOverlay;

    #calls: Lcom/android/gallery3d/app/TrimControllerOverlay;->hidePlayButtonIfPlaying()V
    invoke-static {v0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->access$000(Lcom/android/gallery3d/app/TrimControllerOverlay;)V

    .line 68
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/TrimControllerOverlay;

    #calls: Lcom/android/gallery3d/app/TrimControllerOverlay;->hidePlayButtonIfPlaying()V
    invoke-static {v0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->access$000(Lcom/android/gallery3d/app/TrimControllerOverlay;)V

    .line 63
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 72
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 58
    return-void
.end method
