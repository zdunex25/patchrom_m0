.class Lcom/android/camera/ui/CameraSwitcher$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraSwitcher;->animateHidePopup()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraSwitcher;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitcher$2;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher$2;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitcher;->showsPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher$2;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    #getter for: Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/CameraSwitcher;->access$100(Lcom/android/camera/ui/CameraSwitcher;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_0
    return-void
.end method
