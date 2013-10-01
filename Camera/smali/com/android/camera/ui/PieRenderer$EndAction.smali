.class Lcom/android/camera/ui/PieRenderer$EndAction;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$EndAction;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer$EndAction;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$EndAction;->this$0:Lcom/android/camera/ui/PieRenderer;

    #getter for: Lcom/android/camera/ui/PieRenderer;->mFocusCancelled:Z
    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$800(Lcom/android/camera/ui/PieRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$EndAction;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v0, v0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer$EndAction;->this$0:Lcom/android/camera/ui/PieRenderer;

    #getter for: Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/ui/PieRenderer;->access$900(Lcom/android/camera/ui/PieRenderer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/RenderOverlay;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 759
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 763
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 767
    return-void
.end method
