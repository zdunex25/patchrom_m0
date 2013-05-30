.class Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;
.super Ljava/lang/Object;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 818
    move-object v0, p1

    check-cast v0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;

    .line 819
    .local v0, dv:Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 865
    :goto_0
    return v4

    .line 821
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->stopTrashCanShakeAnimation()V

    .line 822
    invoke-virtual {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->startTrashCanFillUnfillAnimation()V

    .line 823
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;->setShadowVisibility(Z)V

    .line 825
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;->setOnDelete(Z)V

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$300(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I
    invoke-static {v2}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020364

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 828
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I
    invoke-static {v2}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$500(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v2

    #calls: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$1000(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;I)V

    .line 829
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #calls: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$1100(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)V

    .line 830
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #calls: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$1200(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)V

    .line 831
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z
    invoke-static {v1, v4}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$1302(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    .line 832
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z
    invoke-static {v2}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$1300(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Z

    move-result v2

    #calls: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$1400(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;Z)V

    .line 833
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z
    invoke-static {v1, v3}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$1302(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    goto :goto_0

    .line 838
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 839
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;->setOnDelete(Z)V

    .line 841
    :cond_1
    invoke-virtual {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->stopTrashCanShakeAnimation()V

    .line 842
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    goto :goto_0

    .line 846
    :pswitch_2
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 847
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;->setOnDelete(Z)V

    .line 849
    :cond_2
    invoke-virtual {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->startTrashCanShakeAnimation()V

    .line 850
    const v1, 0x7f02026b

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 854
    :pswitch_3
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 855
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;->setOnDelete(Z)V

    .line 857
    :cond_3
    invoke-virtual {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->stopTrashCanShakeAnimation()V

    .line 858
    invoke-virtual {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setNormalTrashIcon()V

    .line 859
    const v1, 0x7f02026c

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 819
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
