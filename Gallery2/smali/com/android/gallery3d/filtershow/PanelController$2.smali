.class Lcom/android/gallery3d/filtershow/PanelController$2;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/PanelController;->showCropPopupMenu(Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/PanelController;

.field final synthetic val$anchor:Lcom/android/gallery3d/filtershow/ui/FramedTextButton;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/PanelController;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$2;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/PanelController$2;->val$anchor:Lcom/android/gallery3d/filtershow/ui/FramedTextButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$2;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/PanelController;->access$600(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController$2;->val$anchor:Lcom/android/gallery3d/filtershow/ui/FramedTextButton;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setAspectButton(Lcom/android/gallery3d/filtershow/ui/FramedTextButton;I)V

    .line 567
    const/4 v0, 0x1

    return v0
.end method
