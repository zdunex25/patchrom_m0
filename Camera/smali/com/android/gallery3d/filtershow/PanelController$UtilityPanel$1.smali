.class Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel$1;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->unselect()Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel$1;->this$1:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel$1;->this$1:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->access$500(Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void
.end method
