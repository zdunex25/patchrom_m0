.class Lcom/android/camera/ui/PieRenderer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PieRenderer;->startFadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    #calls: Lcom/android/camera/ui/PieRenderer;->deselect()V
    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$500(Lcom/android/camera/ui/PieRenderer;)V

    .line 356
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/ui/PieRenderer;->show(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$600(Lcom/android/camera/ui/PieRenderer;Z)V

    .line 357
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v0, v0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setAlpha(F)V

    .line 358
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 359
    return-void
.end method
