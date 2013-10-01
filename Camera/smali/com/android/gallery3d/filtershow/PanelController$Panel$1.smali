.class Lcom/android/gallery3d/filtershow/PanelController$Panel$1;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/PanelController$Panel;->unselect(II)Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/filtershow/PanelController$Panel;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/PanelController$Panel;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel$1;->this$1:Lcom/android/gallery3d/filtershow/PanelController$Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel$1;->this$1:Lcom/android/gallery3d/filtershow/PanelController$Panel;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->access$300(Lcom/android/gallery3d/filtershow/PanelController$Panel;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void
.end method
