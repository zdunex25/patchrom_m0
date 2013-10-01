.class Lcom/android/camera/ui/PieRenderer$4;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PieRenderer;->openCurrentItem()V
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
    .line 532
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$4;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$4;->this$0:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;
    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$702(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$LinearAnimation;)Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    .line 540
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 544
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 535
    return-void
.end method
