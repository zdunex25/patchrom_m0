.class Lcom/android/gallery3d/ui/PopupList$2;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PopupList;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PopupList;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/gallery3d/ui/PopupList$2;->this$0:Lcom/android/gallery3d/ui/PopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/PopupList$2;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #getter for: Lcom/android/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PopupList;->access$000(Lcom/android/gallery3d/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PopupList$2;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #getter for: Lcom/android/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PopupList;->access$000(Lcom/android/gallery3d/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/ui/PopupList$2;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #getter for: Lcom/android/gallery3d/ui/PopupList;->mOnPopupItemClickListener:Lcom/android/gallery3d/ui/PopupList$OnPopupItemClickListener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PopupList;->access$300(Lcom/android/gallery3d/ui/PopupList;)Lcom/android/gallery3d/ui/PopupList$OnPopupItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/ui/PopupList$2;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #getter for: Lcom/android/gallery3d/ui/PopupList;->mOnPopupItemClickListener:Lcom/android/gallery3d/ui/PopupList$OnPopupItemClickListener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PopupList;->access$300(Lcom/android/gallery3d/ui/PopupList;)Lcom/android/gallery3d/ui/PopupList$OnPopupItemClickListener;

    move-result-object v0

    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PopupList$OnPopupItemClickListener;->onPopupItemClick(I)Z

    goto :goto_0
.end method
