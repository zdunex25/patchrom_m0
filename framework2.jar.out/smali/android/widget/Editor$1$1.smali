.class Landroid/widget/Editor$1$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$1;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$1;


# direct methods
.method constructor <init>(Landroid/widget/Editor$1;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 256
    iget-object v2, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    iget-object v2, v2, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    iget-object v2, v2, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 258
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    iget-object v2, v2, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 259
    .local v0, selectionEnd:I
    iget-object v2, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    iget-object v2, v2, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 260
    iget-object v2, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    iget-object v2, v2, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 261
    iget-object v2, p0, Landroid/widget/Editor$1$1;->this$1:Landroid/widget/Editor$1;

    iget-object v2, v2, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 263
    .end local v0           #selectionEnd:I
    .end local v1           #selectionStart:I
    :cond_0
    return-void
.end method
