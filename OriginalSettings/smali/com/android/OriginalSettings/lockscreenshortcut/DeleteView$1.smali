.class Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeleteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->startTrashCanFillUnfillAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 394
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;

    #setter for: Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->access$002(Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;Z)Z

    .line 388
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    .line 389
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 398
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 382
    return-void
.end method
