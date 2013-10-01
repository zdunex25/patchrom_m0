.class Lcom/android/gallery3d/ui/PopupList$3;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 115
    iput-object p1, p0, Lcom/android/gallery3d/ui/PopupList$3;->this$0:Lcom/android/gallery3d/ui/PopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/PopupList$3;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #getter for: Lcom/android/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PopupList;->access$000(Lcom/android/gallery3d/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PopupList$3;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #calls: Lcom/android/gallery3d/ui/PopupList;->updatePopupLayoutParams()V
    invoke-static {v0}, Lcom/android/gallery3d/ui/PopupList;->access$400(Lcom/android/gallery3d/ui/PopupList;)V

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/ui/PopupList$3;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #getter for: Lcom/android/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PopupList;->access$000(Lcom/android/gallery3d/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PopupList$3;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #getter for: Lcom/android/gallery3d/ui/PopupList;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PopupList;->access$100(Lcom/android/gallery3d/ui/PopupList;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/PopupList$3;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #getter for: Lcom/android/gallery3d/ui/PopupList;->mPopupOffsetX:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PopupList;->access$500(Lcom/android/gallery3d/ui/PopupList;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PopupList$3;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #getter for: Lcom/android/gallery3d/ui/PopupList;->mPopupOffsetY:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PopupList;->access$600(Lcom/android/gallery3d/ui/PopupList;)I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/PopupList$3;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #getter for: Lcom/android/gallery3d/ui/PopupList;->mPopupWidth:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PopupList;->access$700(Lcom/android/gallery3d/ui/PopupList;)I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/PopupList$3;->this$0:Lcom/android/gallery3d/ui/PopupList;

    #getter for: Lcom/android/gallery3d/ui/PopupList;->mPopupHeight:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PopupList;->access$800(Lcom/android/gallery3d/ui/PopupList;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_0
.end method
