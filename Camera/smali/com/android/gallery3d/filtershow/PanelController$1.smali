.class Lcom/android/gallery3d/filtershow/PanelController$1;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/PanelController;->showCurvesPopupMenu(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/PanelController;

.field final synthetic val$anchor:Lcom/android/gallery3d/filtershow/ui/FramedTextButton;

.field final synthetic val$curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/PanelController;Lcom/android/gallery3d/filtershow/ui/ImageCurves;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$1;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/PanelController$1;->val$curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/PanelController$1;->val$anchor:Lcom/android/gallery3d/filtershow/ui/FramedTextButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$1;->val$curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->setChannel(I)V

    .line 553
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$1;->val$anchor:Lcom/android/gallery3d/filtershow/ui/FramedTextButton;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTextFrom(I)V

    .line 554
    const/4 v0, 0x1

    return v0
.end method
