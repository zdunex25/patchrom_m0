.class Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;
.super Ljava/lang/Object;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 747
    iput-object p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 749
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$400(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z
    invoke-static {v0, v7}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$402(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    .line 751
    const/4 v6, 0x0

    .line 752
    .local v6, selectedItem:I
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I
    invoke-static {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$300(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I
    invoke-static {v0, v6}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$502(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;I)I

    .line 757
    const-string v0, "dot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dot : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 758
    .local v2, data:Landroid/content/ClipData;
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    new-instance v1, Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;-><init>(Landroid/view/View;)V

    #setter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$602(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;)Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    .line 759
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v3

    move-object v1, p1

    move-object v4, p1

    #calls: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    invoke-static/range {v0 .. v5}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/view/View;Landroid/content/ClipData;Lcom/android/OriginalSettings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z

    .line 760
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 761
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;
    invoke-static {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$800(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;
    invoke-static {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$800(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setNormalTrashIcon()V

    .line 763
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$3;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;
    invoke-static {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$800(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;

    move-result-object v0

    const v1, 0x7f02026c

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setBackgroundResource(I)V

    .line 765
    .end local v2           #data:Landroid/content/ClipData;
    .end local v6           #selectedItem:I
    :cond_1
    return v7

    .line 752
    .restart local v6       #selectedItem:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
