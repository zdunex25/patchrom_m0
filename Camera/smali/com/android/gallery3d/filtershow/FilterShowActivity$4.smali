.class Lcom/android/gallery3d/filtershow/FilterShowActivity$4;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleHistoryPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field final synthetic val$viewList:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;->val$viewList:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;->val$viewList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 887
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;->val$viewList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;->val$viewList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 890
    return-void
.end method
